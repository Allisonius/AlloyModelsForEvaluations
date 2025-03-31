sig Node {
  edges: set Node
}

pred isDirectedTree {
  no iden & ^edges 
  \E\ in iden 
  (Node -> Node) in ^(edges + ~edges)
} 

pred equiv{
   no iden & ^edges 
  edges.~edges in iden
  (Node -> Node) in ^(edges + ~edges)
}

pred faulty{
	no iden & ^edges and ~edges.edges in iden and (Node -> Node) in ^(edges + ~edges)
}

pred revealFault {
	!{faulty[] <=> equiv[] }
}