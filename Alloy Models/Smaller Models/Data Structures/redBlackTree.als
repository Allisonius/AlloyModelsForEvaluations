module homework/redBlackTree [Data]

open util/ordering [Event] as ord
open util/ordering [Data]

sig Tree {
	root: lone Data,
	left: Data ->lone Data,
	right: Data ->lone Data,
	Black: set Data,
	Red: set Data
}

fun reach [n: Data, t: Tree]: set Data {
	n.*(t.(left + right))
}

fun nodes [t: Tree]: set Data {
	reach [t.root, t]
}

fun leaves [t: Tree]: set Data {
	nodes [t] & {n : Data | no n.(t.(left + right))}
}

fun loneChildren [t: Tree]: set Data {
	nodes [t] & {n: Data | lone n.(t.(left + right))}
}

fun parent [n: Data, t: Tree]: lone Data {
	(t.(left + right)).n
}

fun grandparent [n: Data, t: Tree]: lone Data {
	parent[parent [n, t], t]
}

fun uncle [n: Data, t: Tree]: lone Data {
	let g = grandparent [n, t] |
		g.(t.right) = parent[n, t] implies g.(t.left) else g.(t.right)
}

pred isTree [t: Tree] {
	no ^(t.(right + left)) & iden
	all n: Data - nodes[t] | no n.(t.(left + right))
	all n: Data | lone parent [n, t]
	all n: Data | n.(t.left) = n.(t.right) implies no n.(t.left)
}

pred isSortedTree [t: Tree] {
	isTree[t]
	all n: nodes[t] {
		all n': reach [n.(t.left), t] | gt[n, n']
		all n': reach [n.(t.right), t] | lt[n, n']
	}
}

pred isRedBlackTree [t: Tree] {
	// t is sorted tree
	isSortedTree [t]

	// Red and Black partitions the nodes of the tree
	no t.Red & t.Black
	nodes[t] = t.(Red + Black)

	// the root is black
	t.root in t.Black

	// red nodes only have black successors
	(t.Red).(t.(left + right)) in t.Black
	
	// for every node, all paths to nodes with at most one successor visit the 
  // same number of black nodes
	all n: nodes [t], n1, n2: reach [n, t] & loneChildren [t] |
		let parent = ~(t.(left + right)) |
		# n1.*parent & t.Black & reach [n, t] = # n2.*parent & t.Black & reach [n, t]
}

pred showRedBlackTree [t: Tree] {
	isRedBlackTree [t]
	# nodes [t] = 4
}

//run showRedBlackTree for 4 but 1 Tree

pred eqTree [t, t': Tree] {
	t.root = t'.root
	t.left = t'.left
	t.right = t'.right
}

pred eqColors [t, t': Tree] {
	t.Red = t'.Red
	t.Black = t'.Black
}

pred eqRedBlackTree [t, t': Tree] {
	eqTree [t, t']
	eqColors [t, t']
}

fact CanonicalRedBlackTrees {
	all t, t': Tree |	eqRedBlackTree[t, t'] implies t = t' 
}

abstract sig Event {
	pre: Tree,
	post: Tree,
	arg: Data,
}

sig Insert, Rebalance, Term extends Event {} 

fact Trace {
	all e: Event - last [] | next[e].pre = e.post
}

fun search [t: Tree, r: lone Data, n: Data]: lone Data {
	let lt_n = {n': Data | lt [n', n]} |
	let gt_n = {n': Data | gt [n', n]} |
	let endpoints = 
		n +	{n': Data | lte [n', n] and no n'.(t.right)} +
        {n': Data | gte [n', n] and no n'.(t.left)} |
		r.*(gt_n <: t.left + lt_n <: t.right) & endpoints
}


fact InsertEvent {
	all e: Insert | 
	let n = e.arg, t = e.pre, t' = e.post, ne = next[e] |
	let p = search [t, t.root, n] |
	p = n implies {
		// n.data in nodes [t]	
		eqRedBlackTree[t', t]
		ne in Term
	} else {
		no p implies {
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
		t'.Black = t.Black
		t'.Red = t.Red + n
		ne in Rebalance
		ne.arg = n
	}
}

fact RebalanceEvent {
	all e: Rebalance |
	let n = e.arg, t = e.pre, t' = e.post, ne = next[e] |
	no parent[n, t] implies {
		// Case 1
		eqTree [t, t']
		t'.Red = t.Red - n
		t'.Black = t.Black + n
		ne in Term
	} else parent[n, t] in t.Black implies {
		// Case 2
		t' = t
		ne in Term
	} else let u = uncle [n, t] | 
	  // Case 3
		some u & t.Red implies {
		eqTree [t, t']
		let g = grandparent [n, t] {
			t'.Black = t.Black + parent[n, t] + u - g
			t'.Red = t.Red + g - parent[n, t] - u 
			ne in Rebalance
			ne.arg = g
		}
	} else
		// Case 4
		let g = grandparent [n, t] |
		(n in parent[n, t].(t.right) and parent[n, t] in g.(t.left)) implies {
			some t'': Tree {
				eqColors [t, t'']
				rotateLeft [parent[n, t], t, t'']
			  rebalanceCase5 [t'', t', n.(t''.left)]
				ne in Term
			}
		} else (n in parent[n, t].(t.left) and parent[n, t] in g.(t.right)) implies {
			some t'': Tree {
				eqColors [t, t'']
				rotateRight [parent[n, t], t, t''] 
			  rebalanceCase5 [t'', t', n.(t''.right)]
				ne in Term
			}
		} else /* case 5 */ rebalanceCase5 [t, t', n] and ne in Term
}

pred rebalanceCase5 [t, t': Tree, n: Data] {
	let g = grandparent [n, t] {
		t'.Black = t.Black + parent[n, t] - g
		t'.Red = t.Red + g - parent[n, t]
		n in parent[n, t].(t.left) implies rotateRight [g, t, t'] else rotateLeft [g, t, t']
	}
}

fact TermEvent {
	all e : Term |
		e.pre = e.post and (e = last[] or next[e] in Term)
}

pred rotate [n: Data, s1,s1',s2,s2': Data->Data] {
	let parent = ~(s1 + s2) {
		s2' = ((s2 - n->Data) + (n->n.s2.s1)) 
					++ ((n.parent).s2 = n => n.parent->n.s2 else n.parent->n.parent.s2)
		s1' = ((s1 - n.s2->Data) + (n.s2->n))
          ++ (n.parent.s1 = n => n.parent->n.s2 else n.parent->n.parent.s1)
	}		
}

pred rotateRight [n: Data, t, t': Tree] {
	rotate [n, t.right, t'.right, t.left, t'.left]
	t'.root = (n = t.root => n.(t.left) else t.root)
}

pred rotateLeft [n: Data, t, t': Tree] {
	rotate [n, t.left, t'.left, t.right, t'.right]
	t'.root = (n = t.root => n.(t.right) else t.root)
}

assert RotateLeft {
	all t, t': Tree, n: nodes[t] |
		some n.(t.right) and	isSortedTree [t] and rotateLeft[n, t, t'] implies isSortedTree [t']
}

assert RotateRight {
	all t, t': Tree, p, n: nodes[t] |
			parent [n, t] = p and
			some n.(t.left) and	isSortedTree [t] and rotateRight[n, t, t'] implies isSortedTree [t']
}

//check RotateLeft for 6 but 2 Tree

assert RotateRightLeft {
	all t, t', t'': Tree, n: nodes[t] |
			some n.(t.left) and isTree [t] and 
			rotateRight[n, t, t'] and rotateLeft[n.(t.left), t', t''] implies eqTree [t, t'']
}

pred insert [t: Tree, t': Tree, d: Data] {
	ord/first [] in Insert
	(first []).pre = t
	(first []).arg = d
	(last []).pre = t'
	ord/last [] in Term
}

assert Insert {
	all t, t': Tree, d: Data |
		isRedBlackTree [t] and insert [t, t', d]
    implies isRedBlackTree [t']
}

pred showInsert [t, t': Tree, d: Data] {
	insert [t, t', d]
	isRedBlackTree [t]
	d not in nodes [t]
	some nodes [t]
	some Rebalance 
}

//run showRedBlackTree for 1 but 4 Data

//run showInsert for 4 but 6 Data, 6 Tree, 4 Event

// this takes about 10min using the MiniSat SAT solver
check Insert for 6 but 4 Event
