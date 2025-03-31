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
    all n: Node | lone n.link && one n.elem
}

// Underconstraint.  Should be true if no n.link.
// Should synthesize
// all n: This.header.*link | no n.link or n.elem <= n.link.elem
pred Sorted(This: List) {
  all n: This.header.*link | \UO\ \E\ \LO\ n.elem <= n.link.elem
}

pred equiv (This: List){
all n: This.header.*link | no n.link or n.elem <= n.link.elem
}

pred faulty(This: List) {
   all n: This.header.*link | n.elem <= n.link.elem
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}
