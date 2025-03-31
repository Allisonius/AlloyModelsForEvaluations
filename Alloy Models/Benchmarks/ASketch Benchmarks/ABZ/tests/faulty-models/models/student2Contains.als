sig List {
    header: set Node
}

sig Node {
    link: set Node,
    elem: set Int
}

fact consistency{
	one List
    all n : Node | n in List.header.*link
}

// Correct
fact CardinalityConstraints {
    all l : List | lone l.header
    all n : Node | lone n.link
    all n : Node | one n.elem
}

// Correct
pred Loop ( This : List ) {
    no This.header || one n : This.header.*link | n.link = n
}

//REPLACED: with correct version
pred Sorted(This: List) {
  all n: This.header.*link | no n.link or n.elem <= n.link.elem
}

pred RepOk ( This : List ) {
    Loop [This]
    Sorted [This]
}

abstract sig Boolean {}
one sig True , False extends Boolean {}

// Underconstraint as result can always be true.
pred Contains ( This : List , x : Int , result : Boolean ) {
    RepOk [ This ]
    ( x !in This.header.*link.elem \LO\ result=False) 
}


pred equiv(This: List, x: Int, result: Boolean) {
    RepOk[This]
	(some n: This.header.*link | x in n.elem && result = True) || ( (no This.header or all n: This.header.*link | x !in n.elem) && result = False)
}

pred faulty(This: List, x: Int, result: Boolean) {
    RepOk [ This ]
    ( x ! in This.header.*link.elem => result=False ) || result = True
}

pred revealFault(This: List, x: Int, result: Boolean) {
	!{faulty[This,x,result] <=> equiv[This,x,result] }
}