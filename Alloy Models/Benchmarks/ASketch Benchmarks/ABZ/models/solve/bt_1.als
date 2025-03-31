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
      n \CO,co1\ n.^(left + right) -- n !in n.^(left + right)
      no n.left & n.right -- no n.left & n.right
      lone n.~(left + right) -- lone n.~(left + right)
    }
  }
}
