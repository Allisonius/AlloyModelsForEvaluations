one sig List {
  header: lone Node
}

sig Node {
  elem: lone Object,
  link: lone Node
}

sig Object {}

pred Contains(l: List, e: Object) {
  e in \E,e1\
  -- e in l.header.*link.elem
}
