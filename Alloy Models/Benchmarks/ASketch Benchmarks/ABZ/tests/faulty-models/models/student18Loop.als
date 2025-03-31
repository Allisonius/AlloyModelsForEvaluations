sig List {
    header : set Node
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

// Correct
fact CardinalityConstraints {
    all l: List | lone l.header
    all n: Node | lone n.link
    all n: Node | one n.elem
}

// Underconstraint.  Should disallow header = l1 -> n1, no link
// Should synthesize
// no This.header || one n: This.header.*link | n.link = n
pred Loop(This: List) {
    no \E\ || one n: This.header.*link | n.link = n
}

pred equiv(This: List) {
    no This.header || one n: This.header.*link | n.link = n
}

pred faulty(This: List) {
    no This.header.link || one n: This.header.*link | n.link = n
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}
