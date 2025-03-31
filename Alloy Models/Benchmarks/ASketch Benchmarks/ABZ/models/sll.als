one sig List {
  header: lone Node
}

sig Node {
  link: lone Node
}

pred Acyclic() {
-- \Q\ n: Node | n \CO\ \E\ \LO\ n \CO\ \E\
--  all n: Node | n in List.header.*link => n !in n.^link
  \Q\ n: Node | n \CO\ \E\ => n \CO\ \E\
}

--pred Acyclic2() {
--  no List.header or
--  some n: Node | n in List.header.*link and no n.link
--}

