module homework/spanningTree

/** vertices [r] is the set of vertices of the graph 
  * represented by a binary relation r */
fun vertices [r: univ -> univ]: set univ {
	univ.r + r.univ
}

/** isTree [r] is true iff the directed graph represented 
  * by relation r is a tree */
pred isTreeDir [r: univ->univ] {
	some x : univ | all y : vertices[r] | y in x.*r // r contains a root
	no ^r & iden // r is acyclic
	all x : univ.r | one r.x // r is injective
}

/** spansDir [r1, r2] is true iff the directed graph represented
	* by r1 spans the directed graph represented by r2 */
pred spansDir [r1, r2: univ->univ] {
	r1 in r2 // r1 is a subgraph of r2 ...
	vertices [r2] in vertices [r1] // ... and r1 has the same set of vertices as r2
}

/** symClosure [r] is the symmetric closure of relation r */
fun symClosure [r: univ->univ]: univ->univ {
	r + ~r
}

/** isTree [r] is true iff the undirected graph represented 
  * by relation r is a tree */
pred isTree [r: univ->univ] {
	some t: univ->univ {
		isTreeDir [t]
		symClosure [t] = symClosure[r]
	}
}

/** spans [r1, r2] is true iff the directed graph represented 
	*	by r1 spans the undirected graph represented by r2 */
pred spans [r1, r2: univ->univ] {
	spansDir [r1, symClosure[r2]]
}

pred show [r, t1, t2: univ->univ] {
	spans [t1, r] and isTree [t1]
	spans [t2, r] and isTree [t2]
	t1 not = t2
}

run show for 3
