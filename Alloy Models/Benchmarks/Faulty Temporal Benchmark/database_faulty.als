/*
	How to solve a database exercise
	namely the exercise 18.2.4 from The Complete Book
*/

open util/graph[T]

// Data objects
sig DO {}  

// Transaction
sig T {
	var uses: Access lone -> lone DO,  // T reads/writes DO
	var pgraph: set T // precedence graph
}

// Access mode
enum Access {r, w}

// In each step no more than one transaction accesses a data object
fact oneTransActs {
	always #uses <= 1
}

// Builing the precedence graph
fact pgraph {
	no pgraph // pgraph is empty at the beginning
	always PGraph
}

// A former transaction tf is in conflict with
// transaction t, which just wannts to access a data object
pred Conflict [tf, t: T] {
	some d: DO | 
	((t->r->d) in uses' and once (tf->w->d) in uses)
	or
	((t->w->d) in uses' and once (tf->w->d) in uses)
	or
	((t->w->d) in uses' and once (tf->r->d) in uses)
}

// the set of transactions in conflict with t
fun conflictTrans[t: T]: set T {
	{tf: T| tf != t and Conflict[tf, t]}
}

// extending the precedence graph
pred PGraph {
	let t = uses'.DO.Access |
		pgraph' = pgraph + (conflictTrans[t]->t)
}

// You don't necessarily need the following predicates
// for the exercise, but you can play with them
	
// Criteria for seriell schedules
pred Ongoing [tr: T] {
	tr in uses.DO.Access implies
		after (tr in uses.DO.Access or always not eventually tr in uses.DO.Access)
}

pred Serial {
	always (all tr: T | Ongoing[tr])
}

// Criteria for serializable schedules
pred Serializable {
	always dag[pgraph]
}

// Schedule a) from Exercise 18.2.4
pred Sa[t1, t2, t3: T, a, b, c: DO] {
	(t1->r->a) in uses
	; t2->r->a in uses
	; t3->r->b in uses
	; t1->w->a in uses
	; t2->r->c in uses
	; t2->r->b in uses
	; t2->w->b in uses
	; t1->w->c in uses
	; always no uses
}

run Sa {
	some disj t1, t2, t3: T, disj a, b, c: DO |
		Sa[t1, t2, t3, a, b, c]
} for exactly 3 T, exactly 3 DO


// Schedule b) from Exercise 18.2.4
pred Sb[t1, t2, t3: T, a, b, c: DO] {
	(t1->r->a) in uses
	; (t1->w->b) in uses
	; (t2->r->b) in uses
	; (t2->w->c) in uses
	; (t3->r->c) in uses
	; (t3->w->a) in uses
	; always no uses
}

run Sb {
	some disj t1, t2, t3: T, disj a, b, c: DO |
		Sb[t1, t2, t3, a, b, c]
} for exactly 3 T, exactly 3 DO


// Schedule c) from Exercise 18.2.4
pred Sc[t1, t2, t3: T, a, b, c: DO] {
	(t3->w->a) in uses
	; (t1->r->a) in uses
	; (t1->w->b) in uses
	; (t2->r->b) in uses
	; (t2->w->c) in uses
	; (t3->r->c) in uses
	; always no uses
}

run Sc {
	some disj t1, t2, t3: T, disj a, b, c: DO |
		Sc[t1, t2, t3, a, b, c]
} for exactly 3 T, exactly 3 DO

// Schedule d) from Exercise 18.2.4
pred Sd[t1, t2, t3: T, a, b, c, d: DO] {
	(t1->r->a) in uses
	; (t2->r->a) in uses
	; (t1->w->b) in uses
	; (t2->w->b) in uses
	; (t1->r->b) in uses
	; (t2->r->b) in uses
	; (t2->w->c) in uses
	; (t1->w->d) in uses
	; always no uses
}

run Sd {
	some disj t1, t2, t3: T, disj a, b, c, d: DO |
		Sd[t1, t2, t3, a, b, c, d]
} for exactly 3 T, exactly 4 DO

// Schedule e) from Exercise 18.2.4
pred Se[t1, t2, t3, t4: T, a, b: DO] {
	(t1->r->a) in uses
	; (t2->r->a) in uses
	; (t1->r->b) in uses
	; (t2->r->b) in uses
	; (t3->r->a) in uses
	; (t4->r->b) in uses
	; (t1->w->a) in uses
	; (t2->w->b) in uses
	; always no uses
}

run Se {
	some disj t1, t2, t3, t4: T, disj a, b: DO |
		Se[t1, t2, t3, t4, a, b]
} for exactly 4 T, exactly 2 DO, 5 int