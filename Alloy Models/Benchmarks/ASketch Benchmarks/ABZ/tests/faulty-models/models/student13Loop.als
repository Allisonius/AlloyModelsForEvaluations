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

fact allNodesBelongToAList { 
    all n:Node | some l:List | n in l.header.*link + l.header
}

// Correct
fact CardinalityConstraints{
    all l:List | lone l.header  
    all n:Node | lone n.link
    all n:Node | one n.elem
}

// Underconstraint. n.link could be empty so header=l1->n1, link=n1->n2
// should not be allowed.
// Should synthesize
// no This.header or one n: This.header.*link | n = n.link
pred Loop (This : List){
    no This.header || one n:This.header.*link | n.link \CO\ n
}

pred equiv (This : List){
    no This.header or one n: This.header.*link | n = n.link
}

pred faulty (This : List){
    no This.header || one n:This.header.*link | n.link in n
}

pred revealFault[This: List]{
	!{faulty[This] <=> equiv[This] }
}