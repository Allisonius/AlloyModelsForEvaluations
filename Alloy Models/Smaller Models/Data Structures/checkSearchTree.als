module homework/checkSearchTree [Data]

open homework/setContainer [Data] as cont
open homework/searchTreeSet [Data] as tree

fun alpha [t: Tree]: Set {
	{s: Set | s.content = nodes [t]}
}

assert checkInsert {
	all t,t': Tree, d: Data, s,s': Set |
		isSortedTree [t] and insert [t,t',d]
		and alpha [t] = s and insert [s,s',d]
		implies (alpha [t']) = s'
}	

assert checkDelete {
	all t,t': Tree, d: Data, s,s': Set |
		isSortedTree [t] and delete [t,t',d]
		and alpha [t] = s and delete [s,s',d]
		implies (alpha [t']) = s'
}	


assert checkContains {
	all t: Tree, d: Data |
		
		isSortedTree [t] and tree/contains [t,d] implies cont/contains[alpha [t], d]
}	

//check checkInsert for 6 but 2 Tree, 2 Set

//check checkDelete for 6 but 2 Tree, 2 Set

check checkContains for 8 but 1 Tree, 1 Set
