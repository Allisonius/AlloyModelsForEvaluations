sig Id, Name {}

abstract sig Request {
	id : Id,	
	name : Name
}

abstract sig Service { 
	var list : Name -> set Id 
}

sig Service1 extends Service      { 
	-- store hits in buffer
	var buffer : Name -> set Id 
}

sig HitMissRequest extends Request {} { 
	no a : Service1 | name -> id in a.list
}

pred Process [r : Request, s : Service] {
	isHit[r, s] and 	
       -- since it's miss s.buffer' should equal to s.buffer only								
	s.buffer' = s.buffer + r.name -> r.id
}

pred isHit [r : Request, s : Service] {
	r.name -> r.id in s.list
}

assert MissRequest {
	all r : HitMissRequest, s : Service1 |
		Process[r, s] implies
			s.buffer' = s.buffer + r.name -> r.id
}

check MissRequest