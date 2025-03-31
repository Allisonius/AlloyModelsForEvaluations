sig Room {}
one sig secure_lab extends Room {}

abstract sig Person {
  owns : set Key
}
sig Employee extends Person {}
sig Researcher extends Person {}

sig Key {
  authorized: one Employee,
  opened_by: one Room
}

pred CanEnter(p: Person, r:Room) {
	r in p.owns.opened_by
}

pred facts{
  // should synthesize no Employee.owns
  \UO\ \E\
}

pred faulty{
   all p : Person | all r : Room | CanEnter[p, secure_lab] => p in Researcher
}

pred equiv {
  // should synthesize no Employee.owns
  all p : Person | all r : Room |  CanEnter[p, secure_lab] => p in Researcher
  no Employee.owns
}

// Should help create tests.
assert no_thief_in_seclab {
  all p : Person | CanEnter[p, secure_lab] implies p in Researcher
}

pred revealFault {
	!{faulty[] <=> equiv[] }
}