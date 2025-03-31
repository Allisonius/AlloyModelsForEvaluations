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
      n \CO\ \E\ -- n \CO\ \E\ n !in n.^(left + right)
      no n.left & n.right -- \UO\ \E\ no n.left & n.right
      lone n.~(left + right) -- \UO\ \E\ lone n.~(left + right)
    }
  }
}
