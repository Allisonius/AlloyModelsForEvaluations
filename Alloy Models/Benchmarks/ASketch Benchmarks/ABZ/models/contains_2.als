one sig List {
  header: lone Node
}

sig Node {
  elem: lone Object,
  link: lone Node
}

sig Object {}

pred Contains(l: List, e: Object) {
  \E\ \CO\ l.header.*link.elem
  -- e in l.header.*link.elem
}
