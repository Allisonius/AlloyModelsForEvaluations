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

// Overconstraint.
// Should synthesize lone l.header and lone n.link
fact CardinalityConstraints {
    List.header.*link = Node
    all l: List | \UO\ l.header
    all n: Node | \UO\ n.link
    all n : Node | one n.elem
}

pred equiv{
  List.header.*link = Node
    all l: List | lone l.header
    all n: Node | lone n.link
    all n : Node | one n.elem
}

pred faulty {
    List.header.*link = Node
    all l: List | one l.header
    all n: Node | one n.link
    all n : Node | one n.elem
}

pred revealFault{
	!{faulty <=> equiv }
}
