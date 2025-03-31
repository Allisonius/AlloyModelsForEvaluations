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

//REPLACED: with correct version
pred Loop(This: List) {
  no This.header or one n: This.header.*link | n = n.link
}

//REPLACED: with correct version
pred Sorted(This: List) {
  all n: This.header.*link | no n.link or n.elem <= n.link.elem
}

pred RepOk(This: List) {
    Loop[This]
    Sorted[This]
}

// Underconstraint.  Should be && instead of ||
// Should synthesize &&
pred Count(This: List, x: Int, result: Int) {
    RepOk[This]
    result = #{n: Node | n in This.header.*link \LO\ n.elem = x}
}

pred equiv(This: List, x: Int, result: Int) {
    RepOk[This]
    result = #{n: Node | n in This.header.*link && n.elem = x}
}

pred faulty(This: List, x: Int, result: Int) {
    RepOk[This]
    result = #{n: Node | n in This.header.*link || n.elem = x}
}

pred revealFault(This: List, x: Int, result: Int) {
	!{faulty[This,x,result] <=> equiv[This,x,result] }
}
