module binarySearchTree

one sig BinaryTree {
  root: lone Node
}

sig Node {
  left, right: lone Node
}

pred IsTree() {
  all n: Node {
    n in BinaryTree.root.*(left + right)  => {
      n !in n.^(left + right)
      no n.left & n.right
      lone n.~(left + right)
    }
  }
}

pred Test0 {
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1, Node2 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 + Node2 
		root = BinaryTree0->Node2 
		left = Node1->Node0 
		right = Node2->Node1
		IsTree[]
	}
}

pred Test1{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1  
		root = BinaryTree0->Node0 
		left = Node0->Node1 
		right= Node0->Node1 
		!IsTree[]
	}
}

pred Test2{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  {
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1  
		root = BinaryTree0->Node1 
		left = Node0 ->Node1 
		right = Node1->Node0 
		!IsTree[]
	}
}

pred Test3{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1  
		root = BinaryTree0->Node0 
		left = Node0->Node1 
		right = Node0->Node0
		!IsTree[]
	}
}

pred Test4{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1  
		root = BinaryTree0->Node0 
		left = Node0->Node1 + Node1->Node1
		no right
		!IsTree[]
	}
}

pred Test5{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1, Node2 : Node |  {
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 + Node2 
		root = BinaryTree0->Node2 
		left = Node2->Node1 
		right = Node0->Node2
		IsTree[]
	}
}

pred Test6{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1, Node2 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 + Node2 
		root = BinaryTree0->Node2 
		left = Node1->Node2 + Node0->Node2
		right= Node0->Node2 + Node1->Node2
		!IsTree[]
	}
}

pred Test7{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  {
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 
		root = BinaryTree0->Node1
		left = Node0 ->Node1 
		right = Node0->Node1 
		IsTree[]
	}
}

pred Test8{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  {
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 
		root = BinaryTree0->Node1 
		left = Node0->Node0 + Node1->Node1 
		right= Node0->Node1
		!IsTree[]
	}
}

pred Test9{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  {
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 
		root = BinaryTree0->Node1 
		left = Node1->Node1 
		no right
		!IsTree[]
	}
}

pred Test10{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1,Node2 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 + Node2
		root = BinaryTree0->Node2 
		left = Node2->Node1 
		right = Node2->Node0 + Node1->Node2
		!IsTree[]
	}
}

pred Test11{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1 : Node |  {
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 
		root = BinaryTree0->Node1 
		no left 
		right = Node1->Node0
		IsTree[]
	}
}

pred Test12{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1, Node2 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 + Node2
		root = BinaryTree0->Node2 
		left = Node1->Node0 + Node0->Node2 
		right = Node1->Node2
		!IsTree[]
	}
}

pred Test13{
	some disj BinaryTree0 : BinaryTree |  some disj Node0, Node1, Node2 : Node |  { 
		BinaryTree = BinaryTree0 
		Node = Node0 + Node1 + Node2 
		root = BinaryTree0->Node2 
		no left 
		right = Node1->Node2 + Node0->Node2
		!IsTree[]
	}
}
