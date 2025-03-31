one sig List {
  header: lone Node
}

sig Node {
  link: lone Node
}

pred Acyclic() {
-- \Q\ n: Node | n \CO\ \E\ \LO\ n \CO\ \E\
--  all n: Node | n in List.header.*link => n !in n.^link
  \Q\ n: Node | n \CO\ List.header.*link => n !in n.^link
}

