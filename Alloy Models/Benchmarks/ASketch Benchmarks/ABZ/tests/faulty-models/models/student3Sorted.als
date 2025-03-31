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

// Overconstraint, l.header = n1, link = n1->n2, elem = n1->1 + n2->2, not allowed.
// Should synthesize
// all n: Node | no n.link or n.elem <= n.link.elem
pred Sorted(This: List) {
    all n: Node | \UO\ \E\ \LO\ n.elem =< \E\.elem
}

pred equiv(This: List) {
   all n: This.header.*link | no n.link or n.elem <= n.link.elem 
}

pred faulty(This: List) {
   all n: Node | n.elem =< (n.link-This.header).elem
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}
