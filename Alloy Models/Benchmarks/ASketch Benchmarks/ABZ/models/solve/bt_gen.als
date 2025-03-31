module binarySearchTree

one sig BinaryTree {
  root: lone Node
}

sig Node {
  left, right: lone Node
}

pred IsTree() {
  all n: Node {
    n in BinaryTree.root.*(left + right) => {
      n !in \E,e1\
      no n.left & n.right
      lone n.~(left + right)
    }
  }
}
