//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj secure_lab0, Room0 : Room | some disj Researcher0, Employee0 : Person | some disj Key0, Key1, Key2 : Key |  { 
		secure_lab = secure_lab0
		Room = secure_lab0 + Room0
		Employee = Employee0
		Researcher = Researcher0
		Person = Researcher0 + Employee0
		Key = Key0 + Key1 + Key2
		owns = Researcher0->Key0 + Researcher0->Key1 + Employee0->Key1
		authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0 } 
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
		opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0 } 
}


