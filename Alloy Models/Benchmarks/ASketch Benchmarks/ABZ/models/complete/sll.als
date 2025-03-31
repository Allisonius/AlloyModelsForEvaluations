one sig List {
  header: lone Node
}

sig Node {
  link: lone Node
}

pred Acyclic() {
  all n: Node | n in List.header.*link => n !in n.^link
}
