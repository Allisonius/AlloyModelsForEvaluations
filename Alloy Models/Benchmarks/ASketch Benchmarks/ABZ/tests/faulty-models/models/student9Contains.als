sig List  {
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

// Correct
pred Loop(This: List) {
    no This.header || one n: This.header.*link | n in n.link 
}

// Correct
pred Sorted(This: List) {
    all n: This.header.*link | some n.link => n.elem <= n.link.elem
}

pred RepOk(This: List) {
    Loop[This]
    Sorted[This]
}

abstract sig Boolean {}
one sig True, False extends Boolean {}
// Under constraint.  result could be True when the list does not contains x.
// Should synthesize (some n: This.header.*link | n.elem = x) <=> result = True
pred Contains(This: List, x: Int, result: Boolean) {
    RepOk[This]
    {some n: This.header.*link | n.elem = x } \LO\ True = result
}

pred equiv(This: List, x: Int, result: Boolean) {
    RepOk[This]
    (some n: This.header.*link | n.elem = x) <=> result = True
}

pred faulty(This: List, x: Int, result: Boolean) {
    RepOk[This]
    {some n: This.header.*link | n.elem = x } => True = result
}

pred revealFault(This: List, x: Int, result: Boolean) {
	!{faulty[This,x,result] <=> equiv[This,x,result] }
}
