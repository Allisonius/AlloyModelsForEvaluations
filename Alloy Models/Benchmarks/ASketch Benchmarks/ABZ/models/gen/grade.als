abstract sig Person {}
sig Student extends Person {}
sig Professor extends Person {}
sig Class {
	assistant_for: set Student,
	instructor_of: one Professor
}
sig Assignment {
	associated_with: one Class,
	assigned_to: some Student
}

pred PolicyAllowsGrading(s: Person, a: Assignment) {
  // Generating a.associated_with.assistant_for requires cost >= 5
	s in \E\ or s in a.associated_with.instructor_of
}
assert NoOneCanGradeTheirOwnAssignment {
	all s : Person | all a: Assignment | PolicyAllowsGrading[s, a] implies not s in a.assigned_to 
}

check NoOneCanGradeTheirOwnAssignment
