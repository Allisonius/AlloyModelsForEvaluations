/*
	Buggy model of resolution (Figure 1)
	From _Finding Minimal Unsatisfiable Cores of Declarative Specifications_
	Emina Torlak, Felix Sheng-Ho Chang, and Daniel Jackson
	Formal Methods 2008	
*/
abstract sig Boolean {}
one sig True, False extends Boolean {}

sig Literal { neg : Literal }
fact { neg = ~neg and no iden & neg }

sig Clause {lits: set Literal}
one sig Conflict extends Clause{} {no lits}
fact {all c: Clause - Conflict | some c.lits}
fact {all c: Clause | no c.lits & c.lits.neg}

pred resolve[c1, c2, r: Clause] {
	some x: c1.lits & c2.lits.neg  | r.lits = (c1.lits & c2.lits) - (x + x.neg) 
}

sig Refutation {
	sources: some Clause - Conflict,
	resolvents: set Clause,
	edges: (sources + resolvents) -> resolvents
} {
	no ^edges & iden
	all r: resolvents | some edges.r
	Conflict in resolvents

	edges = {
		n: sources + resolvents, r: resolvents |
			one edges.r - n and
			resolve[n, edges.r - n, r] }
}


sig Instance {
	clauses: some Clause,
	assign: Literal->lone Boolean
} {
	all lit: clauses.lits | 
		assign[lit] = Boolean - assign[lit.neg]
	all c: clauses | True in assign[c.lits]
}
run {resolve[Clause,Clause,Clause]}
-----------------------------------------------------

// IMPORTANT: switch to buggy version of sigfact above
assert case1example {
	all i: Instance |
		no ref: Refutation | 
			ref.sources = i.clauses
}
//check case1example for 3

-----------------------------------------------------

// case 2 example is case1example with fixed sigfact

-----------------------------------------------------

// case 3: weak assertion
// Run with fixed sigfact

assert case3example {
	all i: Instance, cs: set i.clauses | 
		cs in lits.(i.assign.True)
}
//check case3example for 3

-----------------------------------------------------

// case 4: scope is too small

assert case4example {
	all ref: Refutation | 
		no (ref.edges).(ref.sources)
}

pred Test0{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		Instance = Instance0 + Instance1 + Instance2
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal0 + Clause1->Literal1
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		clauses = Instance0->Clause0 + Instance1->Clause0 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0 + Instance2->Literal0->True0 + Instance2->Literal1->False0
		resolve[Clause1,Clause0,Conflict0] 
	} 
}

pred Test1{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		Instance = Instance0 + Instance1 + Instance2
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		clauses = Instance0->Clause1 + Instance1->Clause1 + Instance2->Clause1
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0 + Instance2->Literal0->True0 + Instance2->Literal1->False0
		!resolve[Clause1,Clause0,Clause1] } 
}

pred Test2{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation | some disj Instance0, Instance1 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		Instance = Instance0 + Instance1
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		clauses = Instance0->Clause1 + Instance1->Clause1
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0
		!resolve[Clause1,Clause0,Clause0] } 
}

pred Test3{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0, Refutation1, Refutation2 : Refutation | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0 + Refutation1 + Refutation2
		Instance = Instance0 + Instance1 + Instance2
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1 + Refutation1->Clause0 + Refutation1->Clause1 + Refutation2->Clause0 + Refutation2->Clause1
		resolvents = Refutation0->Conflict0 + Refutation1->Conflict0 + Refutation2->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0 + Refutation1->Clause0->Conflict0 + Refutation1->Clause1->Conflict0 + Refutation2->Clause0->Conflict0 + Refutation2->Clause1->Conflict0
		clauses = Instance0->Clause1 + Instance1->Clause1 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0 + Instance2->Literal0->False0 + Instance2->Literal1->True0
		!resolve[Clause1,Clause0,Clause0] } 
}

pred Test4{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Instance = Instance0 + Instance1 + Instance2
		no Refutation
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		clauses = Instance0->Clause1 + Instance1->Clause1 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0 + Instance2->Literal0->False0 + Instance2->Literal1->True0
		no sources
		no resolvents
		no edges
		!resolve[Clause1,Clause0,Clause0] } 
}

pred Test5{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0, Refutation1, Refutation2 : Refutation | some disj Instance0, Instance1 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0 + Refutation1 + Refutation2
		Instance = Instance0 + Instance1
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1 + Refutation1->Clause0 + Refutation1->Clause1 + Refutation2->Clause0 + Refutation2->Clause1
		resolvents = Refutation0->Conflict0 + Refutation1->Conflict0 + Refutation2->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0 + Refutation1->Clause0->Conflict0 + Refutation1->Clause1->Conflict0 + Refutation2->Clause0->Conflict0 + Refutation2->Clause1->Conflict0
		clauses = Instance0->Clause0 + Instance1->Clause0
		assign = Instance0->Literal0->False0 + Instance0->Literal1->True0 + Instance1->Literal0->False0 + Instance1->Literal1->True0
		!resolve[Clause1,Clause0,Clause1] } 
}

pred Test6{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Instance = Instance0 + Instance1 + Instance2
		no Refutation
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		clauses = Instance0->Clause1 + Instance1->Clause1 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0 + Instance2->Literal0->False0 + Instance2->Literal1->True0
		no sources
		no resolvents
		no edges
		!resolve[Clause1,Clause0,Clause1] } 
}

pred Test7{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		no Instance
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		no clauses
		no assign
		!resolve[Clause1,Clause0,Clause1] } 
}

pred Test8{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		Instance = Instance0 + Instance1 + Instance2
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		clauses = Instance0->Clause1 + Instance1->Clause0 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->False0 + Instance1->Literal1->True0 + Instance2->Literal0->False0 + Instance2->Literal1->True0
		resolve[Clause1,Clause0,Conflict0] } 
}

pred Test9{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Instance0, Instance1 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Instance = Instance0 + Instance1
		no Refutation
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		clauses = Instance0->Clause1 + Instance1->Clause1
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0
		no sources
		no resolvents
		no edges
		resolve[Clause1,Clause0,Conflict0] } 
}

pred Test10{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		no Instance
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		no clauses
		no assign
		resolve[Clause1,Clause0,Conflict0] } 
}

pred Test11{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Instance = Instance0 + Instance1 + Instance2
		no Refutation
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		clauses = Instance0->Clause1 + Instance1->Clause1 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->True0 + Instance1->Literal1->False0 + Instance2->Literal0->False0 + Instance2->Literal1->True0
		no sources
		no resolvents
		no edges
		resolve[Clause1,Clause0,Conflict0] } 
}

pred Test12{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0, Clause1 : Clause | some disj Refutation0 : Refutation | some disj Instance0, Instance1, Instance2 : Instance |  { 
		True = True0
		False = False0
		Boolean = True0 + False0
		Literal = Literal0 + Literal1
		Conflict = Conflict0
		Clause = Conflict0 + Clause0 + Clause1
		Refutation = Refutation0
		Instance = Instance0 + Instance1 + Instance2
		neg = Literal0->Literal1 + Literal1->Literal0
		lits = Clause0->Literal1 + Clause1->Literal0
		sources = Refutation0->Clause0 + Refutation0->Clause1
		resolvents = Refutation0->Conflict0
		edges = Refutation0->Clause0->Conflict0 + Refutation0->Clause1->Conflict0
		clauses = Instance0->Clause1 + Instance1->Clause0 + Instance2->Clause0
		assign = Instance0->Literal0->True0 + Instance0->Literal1->False0 + Instance1->Literal0->False0 + Instance1->Literal1->True0 + Instance2->Literal0->False0 + Instance2->Literal1->True0
		resolve[Clause1,Clause0,Conflict0] } 
}

pred Test13{
	some disj True0, False0 : Boolean | some disj Literal0, Literal1 : Literal | some disj Conflict0, Clause0 : Clause | some disj Instance0, Instance1 : Instance |  { 
		Boolean = False0 + True0
		True = True0
		False = False0
		Literal = Literal0 + Literal1
		neg = Literal0->Literal1 + Literal1->Literal0
		Clause = Clause0 + Conflict0
		lits = Clause0->Literal1
		Conflict = Conflict0
		Refutation = none
		sources = none->none
		resolvents = none->none
		edges = none->none->none
		Instance = Instance0 + Instance1
		clauses = Instance0->Clause0 + Instance1->Clause0
		assign = Instance0->Literal0->False0 + Instance0->Literal1->True0 + Instance1->Literal0->False0 + Instance1->Literal1->True0
		!resolve[Clause0,Clause0,Conflict0] } 
}
