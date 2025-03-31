sig Node { edges: set Node}

pred isDirectedTree {
	-- acyclic:
	no iden & ^edges
	-- injective:
	edges.~edges in iden 
	-- connected:
	(Node -> Node) in ^(edges + ~edges)
} 

pred testCase {
	isDirectedTree
	some disj n1, n2, n3: Node | 
		n1->n2 + n1->n3 in edges
}

run isDirectedTree for 4 Node
