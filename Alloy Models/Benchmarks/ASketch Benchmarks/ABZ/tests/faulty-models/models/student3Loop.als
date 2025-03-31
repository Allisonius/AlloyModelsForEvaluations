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

// Correct
fact CardinalityConstraints {
    all l: List | lone l.header
    all n: Node | lone n.link
    all n: Node | one n.elem
}

// Overconstraint.  no header is not allowed given the fact allNodesBelongToOneList.
// Underconstraint. link = n1 -> n2 + n2 -> n3 + n3 -> n1 is allowed.
// Should synthesize
// no List.header || one n: Node | n in (List.header).(*link) => n = n.link
pred Loop(This: List) {
    (no n: Node | n = \E\)
	\LO\
    (one n:Node | n.link = \E\)
}

pred equiv(This: List) {
 no This.header || one n: This.header.*link | n = n.link
}

pred faulty(This: List) {
    no n: Node | n = (n - This.header).link
    one n:Node | n.link = This.header
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}
