//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node | some disj True0, False0 : Boolean |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		True = True0
		False = False0
		Boolean = True0 + False0
		header = List0->Node2
		link = Node0->Node0 + Node1->Node0 + Node2->Node1
		elem = Node0->6 + Node1->5 + Node2->4
		!Contains [List0,6,False0] } 
}

pred Test1{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node | some disj True0, False0 : Boolean |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		True = True0
		False = False0
		Boolean = True0 + False0
		header = List0->Node2
		link = Node0->Node0 + Node1->Node0 + Node2->Node1
		elem = Node0->3 + Node1->2 + Node2->0
		Contains [List0,3,True0] } 
}


