//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node0 + Node1->Node0 + Node2->Node1
		elem = Node0->6 + Node1->6 + Node2->5
		!Count[List0,6,3] } 
}


