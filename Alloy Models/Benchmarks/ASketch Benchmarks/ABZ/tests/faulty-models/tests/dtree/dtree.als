//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj Node0, Node1, Node2 : Node |  { 
		Node = Node0 + Node1 + Node2
		edges = Node0->Node2 + Node1->Node2
		!isDirectedTree[] } 
}

pred Test1{
	some disj Node0, Node1 : Node |  { 
		Node = Node0 + Node1
		edges = Node1->Node0
		isDirectedTree[] } 
}


