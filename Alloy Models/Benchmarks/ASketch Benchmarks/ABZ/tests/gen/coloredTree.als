abstract sig Color {}
one sig Red extends Color {}
one sig Blue extends Color {}

sig Node {
  neighbors: set Node,
  color: one Color 
} 	

fact undirected {
  neighbors = ~neighbors
  no iden & neighbors	
}

fact graphIsConnected {
  all n1: Node | all n2: Node-n1 | 
    n1 in n2.^neighbors }

pred treeAcyclic {
  all n1, n2: Node | n1 in n2.neighbors implies
    n1 not in n2.^(neighbors-(n2->n1))
} 

run {treeAcyclic[]} for 3

pred Test0{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node1 + Node1->Node0 + Node1->Node2 + Node2->Node1
		color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
		treeAcyclic[]
	}
}

pred Test1{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Blue0 + Node1->Red0 + Node2->Blue0
		!treeAcyclic[]
	}
}

pred Test2{
	some disj Blue0, Red0 : Color {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = none
		neighbors = none->none
		color = none->none
		treeAcyclic[]
	}
}

pred Test3{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Red0 + Node1->Red0 + Node2->Red0
		!treeAcyclic[]
	}
}

pred Test4{
	some disj Blue0, Red0 : Color | some disj Node0, Node1 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1
		neighbors = Node0->Node1 + Node1->Node0
		color = Node0->Blue0 + Node1->Red0
		treeAcyclic[]
	}
}

pred Test5{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Red0 + Node1->Blue0 + Node2->Red0
		!treeAcyclic[]
	}
}

pred Test6{
	some disj Blue0, Red0 : Color | some disj Node0 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0
		neighbors = none->none
		color = Node0->Red0
		treeAcyclic[]
	}
}

pred Test7{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Blue0 + Node1->Blue0 + Node2->Blue0
		!treeAcyclic[]
	}
}

pred Test8{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Red0 + Node1->Red0 + Node2->Red0
		treeAcyclic[]
	}
}

pred Test9{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Blue0 + Node1->Red0 + Node2->Red0
		treeAcyclic[]
	}
}

pred Test10{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
		!treeAcyclic[]
	}
}

pred Test11{
	some disj Blue0, Red0 : Color | some disj Node0, Node1 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1
		neighbors = Node0->Node1 + Node1->Node0
		color = Node0->Blue0 + Node1->Blue0
		treeAcyclic[]
	}
}

pred Test12{
	some disj Blue0, Red0 : Color | some disj Node0, Node1, Node2: Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0 + Node1 + Node2
		neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
		color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
		treeAcyclic[]
	}
}

pred Test13{
	some disj Blue0, Red0 : Color | some disj Node0 : Node {
		Color = Blue0 + Red0
		Red = Red0
		Blue = Blue0
		Node = Node0
		neighbors = none->none
		color = Node0->Blue0
		treeAcyclic[]
	}
}
