sig List {
    header: set Node
}

sig Node {
    link: set Node,
    elem: set Int
}

//Added to make all models consistent w.r.t. assumptions that were sometimes made about nodes being in the list
fact consistency{
	one List
    all n : Node | n in List.header.*link
}

// REPLACED: faulty facts with correct facts
fact CardinalityConstraints {
  all l: List | lone l.header
  all n: Node | lone n.link
  all n: Node | one n.elem
}

// Overconstraint.  no l.header should be fine.
// Should synthesize
// no This.header || one n: This.header.*link | n = n.link
pred Loop(This: List) {
    \UO\ \E\ \LO\ one n:This.header.*link | n \CO\ \E\
}

pred equiv(This: List) {
    no This.header || one n: This.header.*link | n = n.link
}

pred faulty(This: List) {
    one n:This.header.*link | n in n.^link
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}
