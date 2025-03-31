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

// Correct
pred Loop(This: List) {
    This.header.*link = Node
    no This.header || one n: This.header.*link | n in n.link
}

// REPLACED: with correct predicate
pred Sorted(This: List) {
  all n: This.header.*link | no n.link or n.elem <= n.link.elem
}

pred RepOk(This: List) {
    Loop[This]
    Sorted[This]
}

abstract sig Boolean {}
one sig True, False extends Boolean {}

// Overconstraint.  result should be True as long as one of the elem = x.
// Should synthesize
// (some n: This.header.*link | n.elem = x) => result = True else result = False
pred Contains(This: List, x: Int, result: Boolean) {
    RepOk[This]
    { \Q\ n: This.header.*link | n.elem = x } => result = True else result = False
}

pred equiv(This: List, x: Int, result: Boolean) {
    RepOk[This]
    (some n: This.header.*link | n.elem = x) => result = True else result = False
}

pred faulty(This: List, x: Int, result: Boolean) {
    RepOk[This]
    { all n: This.header.*link | n.elem = x } =>result = True else result = False
}

pred revealFault(This: List, x: Int, result: Boolean) {
	!{faulty[This,x,result] <=> equiv[This,x,result] }
}

