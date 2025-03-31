module homework/surgeon
open util/ordering [State]

abstract sig Contact {}

abstract sig Person extends Contact {}

abstract sig Patient extends Person {}
one sig Patient1, Patient2, Patient3 extends Patient {}

one sig Surgeon extends Person {}

sig GloveSide extends Contact {
	oppositeOf: GloveSide
}

// there are two (pairs of) gloves each consisting of two opposite glove sides
fact Gloves {
	oppositeOf = oppositeOf + ~oppositeOf
	no oppositeOf & iden
 	#GloveSide = 4 
}

/** States:
  * - "p in s.waiting" means that in state s, patient p is still waiting for an operation
	* - "x in s.contacts[y]" means that in state s, x is in contact with y
  * - "x in s.contaminated[y]" means that in state s, y is contaminated with x
**/
sig State {
  waiting: set Patient, 
	contacts: Contact->lone Contact,
	contaminated: Contact->set Contact, 
}


fun lastContact [c: Contact, s: State]: Contact {
	let noContacts = {x : Contact | no s.contacts[x] and (x in GloveSide implies not x in s.contacts[Contact])} |
	c.(*(s.contacts.(oppositeOf + iden)) :> noContacts)
}

pred isOperating [s: State] {
	lastContact [Surgeon, s] in Patient
}

pred wearsGloves [gs: GloveSide, s: State] {
	some s.contacts & Contact->(gs + gs.oppositeOf)
}

pred makeContact [c1, c2: Contact, s: State, s': State] {
	let d = lastContact[c1, s] {
		s'.contacts = s.contacts ++ d->c2
        s'.contaminated = (s.contaminated + d->(s.contaminated[c2]) + c2->(s.contaminated[d]))
	}
}

pred removeLastContact [c: Contact, s: State, s': State] {
	let d0 = lastContact[c, s] {
		let d = (d0 in GloveSide => d0.oppositeOf else d0) |
		s'.contacts = s.contacts - Contact->d
	}
	s'.contaminated = s.contaminated
}

pred startOperation [p: Patient, s: State, s': State] {
	not isOperating [s]
	p in s.waiting
	makeContact [Surgeon, p, s, s'] 
	s'.waiting = s.waiting
}

pred endOperation [s: State, s': State] {
	isOperating [s]
	removeLastContact [Surgeon, s, s']
	s'.waiting = s.waiting - lastContact[Surgeon, s]
}

pred putOnGloves [gs: GloveSide, s: State, s': State] {
	not wearsGloves [gs, s]
	not isOperating [s]
 	makeContact [Surgeon, gs, s, s']
	s'.waiting = s.waiting
}

pred removeGloves [s: State, s': State] {
	lastContact[Surgeon, s] in GloveSide
 	removeLastContact [Surgeon, s, s']
	s'.waiting = s.waiting
}

pred init [s: State] {
	no s.contacts
	s.waiting = Patient
	s.contaminated = iden & Person->Person
}

pred goal [s: State] {
	no s.waiting
}

fact SafeStates {
	all s: State | Person <: s.contaminated in iden
}

fact Trace {
	init [first []]
	goal [last []]
	all s : State - last [] | let s' = next [s] | 
		(some p : Patient | startOperation [p, s, s']) or
		endOperation [s, s'] or
		(some gs : GloveSide | putOnGloves [gs, s, s']) or
		removeGloves [s, s']
}

run {} for 11 but 8 Contact


