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
	r in  p.owns.opened_by
}

assert no_thief_in_seclab {
  all p : Person | CanEnter[p, secure_lab] implies p in Researcher
}

pred Test0{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0
		Person = Researcher0 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key0 + Researcher0->Key1 + Employee0->Key0 + Employee0->Key1
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		CanEnter[Employee0,Room0] } 
}

pred Test1{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0
		Person = Researcher0 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key0 + Researcher0->Key1
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		!CanEnter[Employee0,Room0] } 
}

pred Test2{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Researcher1, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0 + Researcher1
		Person = Researcher0 + Researcher1 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key1 + Researcher0->Key2 + Researcher1->Key0 + Researcher1->Key2 + Employee0->Key2
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->secure_lab0 + Key1->secure_lab0 + Key2->secure_lab0
		!CanEnter[Employee0,Room0] } 
}

pred Test3{
	some disj secure_lab0, Room0, Room1 : Room | some disj Researcher0, Employee0, Employee1 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0 + Room1
		Employee = Employee0 + Employee1
		Researcher = Researcher0
		Person = Researcher0 + Employee0 + Employee1
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key1 + Employee0->Key0 + Employee1->Key2
		authorized = Key0->Employee1 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->secure_lab0 + Key1->Room1 + Key2->Room0
		!CanEnter[Employee1,secure_lab0] } 
}

pred Test4{
	some disj secure_lab0, Room0 : Room | some disj Employee0, Employee1, Employee2 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0 + Employee1 + Employee2
		Person = Employee0 + Employee1 + Employee2
		Key = Key0 + Key1 + Key2
		no Researcher
		owns = Employee0->Key1 + Employee1->Key0 + Employee1->Key1 + Employee2->Key2
		authorized = Key0->Employee2 + Key1->Employee2 + Key2->Employee1
		opened_by = Key0->secure_lab0 + Key1->secure_lab0 + Key2->Room0
		CanEnter[Employee2,Room0] } 
}

pred Test5{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Researcher1, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0 + Researcher1
		Person = Researcher0 + Researcher1 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key2 + Researcher1->Key0 + Researcher1->Key1 + Employee0->Key0 + Employee0->Key1
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->secure_lab0 + Key2->secure_lab0
		CanEnter[Employee0,secure_lab0] } 
}

pred Test6{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Researcher1, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0 + Researcher1
		Person = Researcher0 + Researcher1 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key1 + Researcher1->Key0 + Researcher1->Key2 + Employee0->Key1
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		!CanEnter[Employee0,secure_lab0] } 
}

pred Test7{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0
		Person = Researcher0 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key0 + Researcher0->Key1 + Employee0->Key1 + Employee0->Key2
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		CanEnter[Employee0,Room0] } 
}

pred Test8{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0, Researcher1 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0 + Researcher1
		Person = Researcher0 + Employee0 + Researcher1
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key1 + Employee0->Key0 + Employee0->Key2
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		!CanEnter[Researcher1,Room0] } 
}

pred Test9{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0
		Person = Researcher0 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key0 + Researcher0->Key1 + Researcher0->Key2 + Employee0->Key2
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->secure_lab0 + Key1->secure_lab0 + Key2->secure_lab0
		CanEnter[Employee0,secure_lab0] } 
}

pred Test10{
	some disj secure_lab0, Room0 : Room | some disj Employee0, Employee1, Employee2 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0 + Employee1 + Employee2
		Person = Employee0 + Employee1 + Employee2
		Key = Key0 + Key1 + Key2
		no Researcher
		owns = Employee0->Key0 + Employee0->Key1
		authorized = Key0->Employee2 + Key1->Employee1 + Key2->Employee1
		opened_by = Key0->secure_lab0 + Key1->Room0 + Key2->secure_lab0
		!CanEnter[Employee2,secure_lab0] } 
}


pred Test11{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Researcher1, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		Room = Room0 + secure_lab0
		secure_lab = secure_lab0
		Person = Employee0 + Researcher0 + Researcher1
		owns = Employee0->Key1 + Employee0->Key2 + Researcher0->Key1 + Researcher1->Key0 + Researcher1->Key2
		Employee = Employee0
		Researcher = Researcher0 + Researcher1
		Key = Key0 + Key1 + Key2
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		CanEnter[Employee0,secure_lab0] 
	} 
}

pred Test12{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		Room = Room0 + secure_lab0
		secure_lab = secure_lab0
		Person = Employee0 + Researcher0
		owns = Employee0->Key2 + Researcher0->Key0 + Researcher0->Key1
		Employee = Employee0
		Researcher = Researcher0
		Key = Key0 + Key1 + Key2
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		CanEnter[Employee0, secure_lab0] 
	} 
}

pred Test13{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0, Employee1 : Person | some disj Key0, Key1, Key2 : Key |  { 
		Room = Room0 + secure_lab0
		secure_lab = secure_lab0
		Person = Employee0 + Employee1 + Researcher0
		owns = Employee1->Key0 + Employee1->Key1 + Employee1->Key2
		Employee = Employee0 + Employee1
		Researcher = Researcher0
		Key = Key0 + Key1 + Key2
		authorized = Key0->Employee1 + Key1->Employee1 + Key2->Employee1
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
		!CanEnter[Researcher0, Room0] 
	} 
}
