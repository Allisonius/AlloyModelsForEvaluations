module homework/phones

sig Phone {
	requests: set Phone,
	connects: lone Phone,
}

pred showA [] {
	// no self requests
	no requests & iden
	// at least two phones
	#Phone > 1
	// and some requests and connections
	some requests
	some connects
}

fact ConnectsRequests {
	//all connections have matching requests
	connects in requests
	//no conference calls
	all x : Phone | lone connects.x
}

run showA
