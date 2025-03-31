//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node1->Node0 + Node2->Node1
		elem = Node0->7 + Node1->5 + Node2->4
		!Loop [List0] } 
}

pred Test1{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node1 + Node2->Node0
		elem = Node0->3 + Node1->-4 + Node2->3
		Loop [List0] } 
}


