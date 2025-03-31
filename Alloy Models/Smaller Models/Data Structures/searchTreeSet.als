module homework/searchTreeSet [Data]

open util/ordering [Data]

sig Tree {
	root: lone Data,
	left: Data ->lone Data,
	right: Data ->lone Data,
}

fun reach [n: Data, t: Tree]: set Data {
	n.*(t.(left + right))
}

fun nodes [t: Tree]: set Data {
	reach [t.root, t]
}

fun parent [n: Data, t: Tree]: lone Data {
	(t.(left + right)).n
}

pred isTree [t: Tree] {
	// (left + right) is acyclic
	no ^(t.(right + left)) & iden
        // left and right are not defined on nodes not reachable from root
	all n: Data - nodes[t] | no n.(t.(left + right))
	// every node has at most one parent
	all n: Data | lone parent [n, t]
	// left and right successors of each node are different
	all n: Data | n.(t.left) = n.(t.right) implies no n.(t.left)
}

pred isSortedTree [t: Tree] {
	isTree[t]
	all n: nodes[t] {
		all n': reach [n.(t.left), t] | lt [n', n]
		all n': reach [n.(t.right), t] | gt [n', n]
	}
}

pred show [t: Tree, n: Data] {
	isTree [t]
	n in nodes [t]
}

//run show for 6 but 1 Tree


pred eqTree [t, t': Tree] {
	t.root = t'.root
	t.left = t'.left
	t.right = t'.right
}

/** search [t, r, n] is:
	(a) n, if n is contained in the subtree of t, rooted in r 
	(b) either the in-order successor or the in-order predecessor of n 
			in the subtree of t rooted in r, if t is not empty.
	(c) none, if t is the empty tree
*/
fun search [t: Tree, r: lone Data, n: Data]: lone Data {
	let lt_n = {n': Data | lt [n', n]} |
	let gt_n = {n': Data | gt [n', n]} |
	let endpoints = 
		n +	{n': Data | lte [n', n] and no n'.(t.right)} +
        {n': Data | gte [n', n] and no n'.(t.left)} |
		r.*(gt_n <: t.left + lt_n <: t.right) & endpoints
}


pred insert [t, t': Tree, n: Data] {
	let p = search [t, t.root, n] |
	p = n implies {
		// n in nodes [t]	
		eqTree[t', t]
	} else {
		// n not in nodes [t]
		no p implies {
			// no nodes [t]
			t'.root = n
			t'.left = t.left
			t'.right = t.right
		} else {
			t'.root = t.root
			gt [p, n] implies {
				t'.left = t.left ++ p->n
				t'.right = t.right
			} else {
				t'.left = t.left
				t'.right = t.right ++ p->n
			}
		}
	}
}

pred delete [t, t': Tree, n: Data] {
	n = search [t, t.root, n] implies {
			(no n.(t.left) or no n.(t.right)) implies {
				(parent [n, t]).(t.left) = n
				// n has at most one child
				let c = n.(t.left) + n.(t.right) |
				let p = parent [n, t] |
				p.(t.left) = n implies {
					t'.right = t.right - (n->c)
					t'.left = t.left - (n->c) - (p->n) + (p->c)
					t'.root = t.root
				} else p.(t.right) = n implies {
					t'.left = t.left - (n->c)
					t'.right = t.right - (n->c) - (p->n) + (p->c)
					t'.root = t.root
				} else {
					// n = t.root
					t'.left = t.left - (n->c)
					t'.right = t.right - (n->c)
					t'.root = c
				}
			} else {
				// n has two children
				let p = parent [n, t] |
				let nr = n.(t.right) |
				let nl = n.(t.left) |
				let inOrderSucc = n.(t.right).(*(t.left) :> {n': Data | no n'.(t.left)}) |
				let inOrderPred = n.(t.left).(*(t.right) :> {n': Data | no n'.(t.right)}) |
				some c: Data {
					// let c be either the in-order predecessor or in-order successor of n in
					// t. Both must exist since n has two children.
					c in inOrderSucc + inOrderPred
					let pc = parent [c, t] |
					lt [c, n] implies {
						// c is in-order predecessor of n in t
						let cl = c.(t.left) {
							let left1 = t.left + (pc.(t.left) = c => pc->cl else pc->pc.(t.left)) - (pc->c) |
							let left2 = left1 ++ (pc = n => c->cl else c->nl) |
							let left3 = left2 + (p.(t.left) = n => p->c else p->p.(t.left)) - p->n |
							t'.left = left3 - n->Data
							let right1 = t.right + (pc.(t.right) = c => pc->cl else pc->pc.(t.right)) - (pc->c) |
							let right2 = right1 + (c->nr) |
							let right3 = right2 + (p.(t.right) = n => p->c else p->p.(t.right)) - (p->n) |
							t'.right = right3 - (n->Data) 
							t'.root = (some p => t.root else c)
						}
					} else {
						// c is in-order successor of n in t
						let cr = c.(t.right) {
							let right1 = (t.right + (pc.(t.right) = c => pc->cr else pc->pc.(t.right))) - (pc->c) |
							let right2 = right1 ++ (pc = n => c->cr else c->nr) |
							let right3 = right2 + (p.(t.right) = n => p->c else p->p.(t.right)) - (p->n) |
							t'.right = right3 - (n->Data) 
						  let left1 = t.left + (pc.(t.left) = c => pc->cr else pc->pc.(t.left)) - (pc->c) |
							let left2 = left1 + (c->nl) |
							let left3 = left2 + (p.(t.left) = n => p->c else p->p.(t.left)) - (p->n) |
							t'.left = left3 - (n->Data) 
							t'.root = (some p => t.root else c)
						} 
					} 
				}
			}
		} else /* n not in t */ eqTree[t, t']
}

pred contains [t: Tree, n: Data] { n = search [t, t.root, n] }

assert CheckInsert {
	all t, t': Tree, n: Data |
	isSortedTree [t] and insert [t,t',n] implies isSortedTree [t']
}

assert CheckDelete {
	all t, t': Tree, n: Data |
	isSortedTree [t] and delete [t,t',n] implies isSortedTree [t']
}


pred showInsert [t, t': Tree, n: Data] {
	isSortedTree [t]
	#nodes [t] > 2
	n not in nodes [t]
	insert [t, t', n]
	nodes [t'] = nodes [t] + n		
	isSortedTree [t']
}


pred showDelete [t, t': Tree, n: Data] {
	isSortedTree [t]
	#nodes [t] > 2
	n in nodes [t]
	delete [t, t', n]
	nodes [t'] = nodes [t] - n		
	isSortedTree [t']
}


run showInsert for 8 but 2 Tree

run showDelete for 8 but 2 Tree

check CheckInsert for 8 but 2 Tree 

check CheckDelete for 8 but 2 Tree 
