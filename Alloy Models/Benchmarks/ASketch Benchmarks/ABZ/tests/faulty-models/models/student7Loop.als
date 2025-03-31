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
    all l: List | #l.header <= 1
    all n: Node | #n.link <= 1
    all n: Node | #n.elem = 1
}

// Overconstraint. Should allow no l.header
// Underconstraint.  Should not allow link = n1 -> n2 + n2 -> n3 + n3 -> n1
// Overconstraint. Should allow link = n1 -> n2 + n2 -> n3 + n3 -> n3
// Should synthesize
// #header = 0 || one n: Node | n in This.header.*link => n = n.link
pred Loop(This: List) {
  (#header \CO\ 0)
  \LO\
  (\Q\ n: Node | n \CO\ \E\) 
}

pred equiv(This: List){
    no This.header or one n: This.header.*link | n = n.link
}

pred faulty(This: List) {
    all n: Node| n in This.header.link.^(link)
    #header > 0
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}
