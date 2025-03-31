module homework/GoatCabbageWolf
open util/ordering [State]

abstract sig Entity {}
one sig Farmer extends Entity {}
one sig Goat extends Entity {}
one sig Cabbage extends Entity {}
one sig Wolf extends Entity {}

sig State {
	leftBank: set Entity, // the entities on the left river bank
	rightBank: set Entity // the entities on the right river bank
}
{
	// leftBank and rightBank form a partition of Entity
	leftBank + rightBank = Entity
	no leftBank & rightBank
}

pred safeBank [b: set Entity] {
	Farmer in b or {
		not (Goat in b and Cabbage in b)
		not (Wolf in b and Goat in b)
	}
}

// we want to search for an instance that only contains safe states
fact SafeStates {
	all s : State | safeBank [s.rightBank] and safeBank [s.leftBank]
}

// initially everyone is on the left bank
pred start [s: State] {
	Entity = s.leftBank
}

// in the end, everyone is on the right bank
pred goal [s: State] {
	Entity = s.rightBank
}

// In each transition we move the farmer and at most one other entity
// from one bank to the other. We encode this by the predicate 
// move [b, b', e] where
// 	- b is the pre state of the bank from which we start
// 	- b' is the post state of the bank b
// - e is the entity to be moved (which can also be the farmer, i.e. the farmer moves alone)
// We do not need to model how the complementary bank of b changes. 
// The necessary constraints are already enforced by the signature fact 
// of signature State.
pred move [b, b': set Entity, e : Entity] {
	// both the farmer and the entity to be moved are on bank b
	Farmer in b
	e in b
	// after the move, the Farmer and e are no longer on bank b 
    //	while all other entities on bank b stay on b
	b' = (b - Farmer) - e
}

// we want to search for a trace 
fact Trace {
	start [first []]
	goal [last []]
	all s: State - last [] | let s' = next [s] |
		some e: Entity |
			// move e and Farmer from the left to the right Bank
			move [s.leftBank, s'.leftBank, e] or
			// move e and Farmer from the right to the left Bank
			move [s.rightBank, s'.rightBank, e]
}

run {} for 8

