//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj Student0, Professor0, Student1 : Person | some disj Class0, Class1 : Class | some disj Assignment0 : Assignment |  { 
		Student = Student0 + Student1
		Professor = Professor0
		Person = Student0 + Professor0 + Student1
		Class = Class0 + Class1
		Assignment = Assignment0
		assistant_for = Class0->Student0 + Class0->Student1 + Class1->Student0 + Class1->Student1
		instructor_of = Class0->Professor0 + Class1->Professor0
		associated_with = Assignment0->Class1
		assigned_to = Assignment0->Student1
		!PolicyAllowsGrading[Student1,Assignment0] } 
}

pred Test1{
	some disj Student0, Professor0 : Person | some disj Class0, Class1, Class2 : Class | some disj Assignment0 : Assignment |  { 
		Student = Student0
		Professor = Professor0
		Person = Student0 + Professor0
		Class = Class0 + Class1 + Class2
		Assignment = Assignment0
		assistant_for = Class0->Student0 + Class1->Student0 + Class2->Student0
		instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
		associated_with = Assignment0->Class2
		assigned_to = Assignment0->Student0
		PolicyAllowsGrading[Professor0,Assignment0] } 
}

pred Test2{
	some disj Student0, Professor0, Professor1 : Person | some disj Class0 : Class | some disj Assignment0 : Assignment |  { 
		Student = Student0
		Professor = Professor0 + Professor1
		Person = Student0 + Professor0 + Professor1
		Class = Class0
		Assignment = Assignment0
		instructor_of = Class0->Professor1
		associated_with = Assignment0->Class0
		assigned_to = Assignment0->Student0
		no assistant_for
		PolicyAllowsGrading[Professor1,Assignment0] } 
}

pred Test3{
	some disj Student0, Professor0, Student1 : Person | some disj Class0 : Class | some disj Assignment0 : Assignment |  { 
		Student = Student0 + Student1
		Professor = Professor0
		Person = Student0 + Professor0 + Student1
		Class = Class0
		Assignment = Assignment0
		assistant_for = Class0->Student0 + Class0->Student1
		instructor_of = Class0->Professor0
		associated_with = Assignment0->Class0
		assigned_to = Assignment0->Student0
		PolicyAllowsGrading[Student1,Assignment0] } 
}

pred Test4{
	some disj Student0, Professor0, Student1 : Person | some disj Class0, Class1, Class2 : Class | some disj Assignment0, Assignment1, Assignment2 : Assignment |  { 
		Student = Student0 + Student1
		Professor = Professor0
		Person = Student0 + Professor0 + Student1
		Class = Class0 + Class1 + Class2
		Assignment = Assignment0 + Assignment1 + Assignment2
		assistant_for = Class0->Student1 + Class1->Student1 + Class2->Student1
		instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
		associated_with = Assignment0->Class2 + Assignment1->Class2 + Assignment2->Class1
		assigned_to = Assignment0->Student1 + Assignment1->Student1 + Assignment2->Student0 + Assignment2->Student1
		!PolicyAllowsGrading[Student1,Assignment2] } 
}

pred Test5{
	some disj Student0, Professor0, Student1 : Person | some disj Class0 : Class | some disj Assignment0, Assignment1, Assignment2 : Assignment |  { 
		Student = Student0 + Student1
		Professor = Professor0
		Person = Student0 + Professor0 + Student1
		Class = Class0
		Assignment = Assignment0 + Assignment1 + Assignment2
		assistant_for = Class0->Student1
		instructor_of = Class0->Professor0
		associated_with = Assignment0->Class0 + Assignment1->Class0 + Assignment2->Class0
		assigned_to = Assignment0->Student1 + Assignment1->Student1 + Assignment2->Student0
		PolicyAllowsGrading[Student1,Assignment2] } 
}

pred Test6{
	some disj Student0, Student1, Professor0 : Person | some disj Class0, Class1, Class2 : Class | some disj Assignment0 : Assignment |  { 
		Student = Student0 + Student1
		Professor = Professor0
		Person = Student0 + Student1 + Professor0
		Class = Class0 + Class1 + Class2
		Assignment = Assignment0
		assistant_for = Class0->Student1 + Class1->Student1 + Class2->Student1
		instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
		associated_with = Assignment0->Class2
		assigned_to = Assignment0->Student1
		PolicyAllowsGrading[Professor0,Assignment0] } 
}


