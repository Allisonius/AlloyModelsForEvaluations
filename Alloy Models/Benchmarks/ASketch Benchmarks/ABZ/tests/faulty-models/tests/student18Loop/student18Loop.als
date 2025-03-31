//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj List0 : List | some disj Node0 : Node |  { 
		List = List0
		Node = Node0
		header = List0->Node0
		elem = Node0->7
		no link
		!Loop[List0] } 
}

pred Test1{
	some disj List0 : List |  { 
		List = List0
		no Node
		no header
		no link
		no elem
		Loop[List0] } 
}


