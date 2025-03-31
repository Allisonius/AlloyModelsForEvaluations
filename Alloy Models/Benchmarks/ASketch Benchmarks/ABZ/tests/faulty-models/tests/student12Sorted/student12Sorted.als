//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node2->Node0
		elem = Node0->5 + Node1->5 + Node2->4
		Sorted[List0] } 
}

pred Test1{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node2 + Node1->Node0 + Node2->Node1
		elem = Node0->3 + Node1->3 + Node2->2
		!Sorted[List0] } 
}

pred Test2{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node2 + Node2->Node0
		elem = Node0->3 + Node1->2 + Node2->-2
		!Sorted[List0] } 
}

pred Test3{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node2 + Node1->Node0 + Node2->Node1
		elem = Node0->3 + Node1->1 + Node2->3
		!Sorted[List0] } 
}

pred Test4{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node2->Node0
		elem = Node0->3 + Node1->2 + Node2->3
		!Sorted[List0] } 
}

pred Test5{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node1 + Node2->Node0
		elem = Node0->3 + Node1->3 + Node2->3
		Sorted[List0] } 
}

pred Test6{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node1 + Node2->Node0
		elem = Node0->2 + Node1->2 + Node2->3
		!Sorted[List0] } 
}

pred Test7{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node1->Node0 + Node2->Node1
		elem = Node0->-3 + Node1->-4 + Node2->-4
		Sorted[List0] } 
}

pred Test8{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node0 + Node1->Node0 + Node2->Node1
		elem = Node0->0 + Node1->-3 + Node2->-4
		Sorted[List0] } 
}


