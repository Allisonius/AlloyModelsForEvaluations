module homework/setContainer [Data]

sig Set {
	content: set Data
}

fact Canonicalize {
	all s,s': Set | s.content = s'.content implies s = s'
}

pred insert [s,s': Set, d: Data] {
	s'.content = s.content + d
}

pred delete [s,s': Set, d: Data] {
	s'.content = s.content - d
}

pred contains [s: Set, d: Data] {
	d in s.content
}


