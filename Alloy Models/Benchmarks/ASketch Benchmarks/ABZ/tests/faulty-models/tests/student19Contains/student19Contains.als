//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj True0, False0 : Boolean |  { 
		List = List0
		True = True0
		False = False0
		Boolean = True0 + False0
		no Node
		no header
		no link
		no elem
		!Contains[List0,6,True0] } 
}

pred Test1{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node | some disj True0, False0 : Boolean |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		True = True0
		False = False0
		Boolean = True0 + False0
		header = List0->Node2
		link = Node0->Node1 + Node1->Node1 + Node2->Node0
		elem = Node0->3 + Node1->3 + Node2->2
		Contains[List0,1,False0] } 
}

pred Test2{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node | some disj True0, False0 : Boolean |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		True = True0
		False = False0
		Boolean = True0 + False0
		header = List0->Node2
		link = Node0->Node0 + Node1->Node0 + Node2->Node1
		elem = Node0->1 + Node1->-1 + Node2->-4
		!Contains[List0,-4,False0] } 
}

pred Test3{
	some disj List0 : List | some disj Node0 : Node | some disj True0, False0 : Boolean |  { 
		List = List0
		Node = Node0
		True = True0
		False = False0
		Boolean = True0 + False0
		header = List0->Node0
		link = Node0->Node0
		elem = Node0->3
		!Contains[List0,3,False0] } 
}

pred Test4{
	some disj List0 : List | some disj True0, False0 : Boolean |  { 
		List = List0
		True = True0
		False = False0
		Boolean = True0 + False0
		no Node
		no header
		no link
		no elem
		Contains[List0,3,False0] } 
}


