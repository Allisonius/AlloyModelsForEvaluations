one sig List {
  header: lone Node
}

sig Node {
  elem: lone Object,
  link: lone Node
}

sig Object {}

pred Contains(l: List, e: Object) {
  \E,e1\ \CO,co1\ l.header.*link.elem
  -- e in l.header.*link.elem
}
