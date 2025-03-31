one sig List {
  header, header': lone Node
}

sig Node {
  elem, elem': lone Object,
  link, link': lone Node
}

sig Object {}

pred Remove(l: List, e: Object) {
  \E\ \BO\ \E\ = \E\
  -- l.header.*link.elem - e = l.header'.*link'.elem'
}
