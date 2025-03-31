module homework/checkSearchTree [Data]

open homework/setContainer [Data] as cont
open homework/redBlackTree [Data] as tree

fun alpha [t: Tree]: Set {
	{s: Set | s.content = nodes [t]}
}

assert checkInsert {
	all t,t': Tree, d: Data, s,s': Set |
		isRedBlackTree [t] and insert [t, t', d]
		and alpha [t] = s and insert [s, s', d]
		implies (alpha [t']) = s'
}	

// this takes about 5min using the MiniSat SAT solver
check checkInsert for 4 but 6 Data, 2 Set
