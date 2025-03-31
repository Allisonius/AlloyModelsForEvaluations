
pred Test0{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Fox0,Fox0,Farmer0,Farmer0] } 
}

pred Test1{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Fox0,Fox0,Chicken0,Farmer0] } 
}

pred Test2{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Fox0,Fox0,Farmer0,Farmer0] } 
}

pred Test3{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Grain0,Grain0,Fox0,Farmer0] } 
}

pred Test4{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Fox0,Fox0,Farmer0,Farmer0] } 
}

pred Test5{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Grain0,Grain0,Grain0,Farmer0] } 
}

pred Test6{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Farmer0,Farmer0,Farmer0,Farmer0] } 
}

pred Test7{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Chicken0,Chicken0,Farmer0,Farmer0] } 
}

pred Test8{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Fox0,Fox0,Farmer0,Farmer0] } 
}

pred Test9{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Farmer0,Farmer0,Farmer0,Farmer0] } 
}

pred Test10{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Chicken0,Chicken0,Grain0,Farmer0] } 
}

pred Test11{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Chicken0,Chicken0,Chicken0,Farmer0] } 
}

pred Test12{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Grain0,Grain0,Farmer0,Farmer0] } 
}

pred Test13{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		crossRiver [Chicken0,Chicken0,Farmer0,Farmer0] } 
}

pred Test14{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Farmer0,Farmer0,Farmer0,Farmer0] } 
}

pred Test15{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Farmer0,Grain0,Farmer0,Farmer0] } 
}

pred Test16{
	some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0 : State |  { 
		Farmer = Farmer0
		Fox = Fox0
		Chicken = Chicken0
		Grain = Grain0
		Object = Farmer0 + Fox0 + Chicken0 + Grain0
		State = State0
		eats = Fox0->Chicken0 + Chicken0->Grain0
		near = State0->Farmer0 + State0->Fox0 + State0->Chicken0
		far = State0->Farmer0 + State0->Fox0 + State0->Chicken0 + State0->Grain0
		!crossRiver [Farmer0,Farmer0,Farmer0,Farmer0] } 
}

