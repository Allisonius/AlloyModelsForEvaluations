//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj Red0, Blue0 : Color | some disj Node0 : Node |  { 
		Red = Red0
		Blue = Blue0
		Color = Red0 + Blue0
		Node = Node0
		neighbors = Node0->Node0
		color = Node0->Red0
		!undirected[] } 
}

pred Test1{
	some disj Red0, Blue0 : Color | some disj Node0 : Node |  { 
		Red = Red0
		Blue = Blue0
		Color = Red0 + Blue0
		Node = Node0
		color = Node0->Red0
		no neighbors
		undirected[] } 
}

pred Test2{
	some disj Red0, Blue0 : Color | some disj Node0, Node1 : Node |  { 
		Red = Red0
		Blue = Blue0
		Color = Red0 + Blue0
		Node = Node0 + Node1
		neighbors = Node0->Node1 + Node1->Node0
		color = Node0->Blue0 + Node1->Red0
		undirected[] } 
}

pred Test3{
	some disj Red0, Blue0 : Color | some disj Node0 : Node |  { 
		Red = Red0
		Blue = Blue0
		Color = Red0 + Blue0
		Node = Node0
		neighbors = Node0->Node0
		color = Node0->Red0
		!undirected[] } 
}


