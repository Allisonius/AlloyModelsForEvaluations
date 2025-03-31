sig Node { edges: set Node}

pred isDirectedTree {
	-- acyclic:
	no iden & ^edges
	-- injective:
	edges.~edges in iden 
	-- connected:
	(Node -> Node) in ^(edges + ~edges) 
} 

pred Test0{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node2->Node0 + Node2->Node1
		isDirectedTree[]
	}
}

pred Test1{
	some disj Node0 : Node {
		Node = Node0 
		edges = Node0->Node0
		!isDirectedTree[]
	}
}

pred Test2{
	some disj Node0, Node1 : Node {
		Node = Node0 + Node1 
		edges = Node0->Node1
		isDirectedTree[]
	}
}

pred Test3{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node2->Node0 + Node2->Node1 + Node2->Node2
		!isDirectedTree[]
	}
}

pred Test4{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2 
		edges = Node2->Node1 + Node2->Node1
		!isDirectedTree[]
	}
}

pred Test5{
	some disj Node0, Node1 : Node {
		Node = Node0 + Node1
		edges = Node0->Node0 + Node0->Node1 + Node1->Node0 + Node1->Node1
		!isDirectedTree[]
	}
}

pred Test6{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2 
		edges = Node2->Node0 + Node2->Node1 
		isDirectedTree[]
	}
}

pred Test7{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node0->Node0 + Node0->Node2 + Node1->Node0 + Node1->Node1 + Node2->Node1
		!isDirectedTree[]
	}
}


pred Test8{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node0->Node2 + Node1->Node0
		isDirectedTree[]
	}
}

pred Test9{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node0->Node2 + Node1->Node1 + Node2->Node0
		!isDirectedTree[]
	}
}

pred Test10{
	no Node
	no edges
	isDirectedTree[]
}

pred Test11{
	some disj Node0 : Node {
		Node = Node0 
		no edges
		!isDirectedTree[]
	}
}

pred Test12{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node0->Node2 + Node1->Node0 + Node2->Node2
		!isDirectedTree[]
	}
}

pred Test13{
	some disj Node0, Node1, Node2 : Node {
		Node = Node0 + Node1 + Node2
		edges = Node0->Node2 + Node1->Node0 + Node2->Node1 + Node2->Node2
		!isDirectedTree[]
	}
}
