//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node | some disj True0, False0 : Boolean |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		True = True0
		False = False0
		Boolean = True0 + False0
		header = List0->Node2
		link = Node0->Node1 + Node1->Node1 + Node2->Node0
		elem = Node0->5 + Node1->5 + Node2->4
		!Contains[List0,5,False0] } 
}


