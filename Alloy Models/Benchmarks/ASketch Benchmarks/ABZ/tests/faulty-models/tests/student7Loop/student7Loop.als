//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node2 + Node2->Node0
		elem = Node0->4 + Node1->1 + Node2->-1
		!Loop[List0] } 
}

pred Test1{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node1 + Node2->Node0
		elem = Node0->-4 + Node1->-4 + Node2->-3
		Loop[List0] } 
}

pred Test2{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node1->Node0 + Node2->Node1
		elem = Node0->3 + Node1->2 + Node2->-2
		!Loop[List0] } 
}

pred Test3{
	some disj List0 : List | some disj Node0 : Node |  { 
		List = List0
		Node = Node0
		header = List0->Node0
		link = Node0->Node0
		elem = Node0->-4
		Loop[List0] } 
}

pred Test4{
	some disj List0 : List | some disj Node0, Node1, Node2 : Node |  { 
		List = List0
		Node = Node0 + Node1 + Node2
		header = List0->Node2
		link = Node0->Node1 + Node1->Node0 + Node2->Node0
		elem = Node0->-1 + Node1->-2 + Node2->-3
		!Loop[List0] } 
}

pred Test5{
	some disj List0 : List | some disj Node0, Node1 : Node |  { 
		List = List0
		Node = Node0 + Node1
		header = List0->Node1
		link = Node1->Node0
		elem = Node0->-1 + Node1->-4
		!Loop[List0] } 
}

pred Test6{
	some disj List0 : List |  { 
		List = List0
		no Node
		no header
		no link
		no elem
		Loop[List0] } 
}


