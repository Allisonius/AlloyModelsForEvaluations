one sig List {
  header: lone Node
}

sig Node {
  link: lone Node
}

pred Acyclic() {
-- \Q\ n: Node | n \CO\ \E\ \LO\ n \CO\ \E\
--  all n: Node | n in List.header.*link => n !in n.^link
  \Q,q1\ n: Node | n \CO,co1\ List.header.*link => n !in n.^link
}

