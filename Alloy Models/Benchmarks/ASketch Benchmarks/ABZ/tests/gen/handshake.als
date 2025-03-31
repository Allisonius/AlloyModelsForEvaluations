module handshake

sig Person {spouse: Person, shaken: set Person}
one sig Jocelyn, Hilary extends Person {}

pred ShakingProtocol {
    all p: Person | no (p + p.spouse) & p.shaken 
    all p, q: Person | p in q.shaken => q in p.shaken
    }

fact Spouses {
    all p, q: Person | p!=q => {
        p.spouse = q => q.spouse = p
        p.spouse != q.spouse
        }
    all p: Person {
        p.spouse.spouse = p
        p != p.spouse
        }
    }

pred Puzzle {
    all p,q: Person - Jocelyn | p!=q => #p.shaken != #q.shaken
    Hilary.spouse = Jocelyn
    }

run {!ShakingProtocol[]} for  4 but exactly 4 Person

pred Test0{
	some disj Jocelyn0, Hilary0 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0
		spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		no shaken
		ShakingProtocol[] } 
}

pred Test1{
	some disj Jocelyn0, Hilary0 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0
		spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		shaken = Jocelyn0->Jocelyn0
		!ShakingProtocol[] } 
}

pred Test2{
	some disj Jocelyn0, Hilary0 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0
		spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		shaken = Hilary0->Hilary0
		!ShakingProtocol[] } 
}

pred Test3{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0 + Person0 + Person1
		spouse = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
		shaken = Person0->Person1 + Person1->Person0
		ShakingProtocol[] } 
}

pred Test4{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0 + Person0 + Person1
		spouse = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
		shaken = Person1->Person1
		!ShakingProtocol[] } 
}

pred Test5{
	some disj Jocelyn0, Hilary0 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0
		spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		shaken = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		!ShakingProtocol[] } 
}

pred Test6{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0 + Person0 + Person1
		spouse = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
		shaken = Jocelyn0->Person1 + Person1->Jocelyn0
		!ShakingProtocol[] } 
}

pred Test7{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0 + Person0 + Person1
		spouse = Jocelyn0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Hilary0
		shaken = Hilary0->Person1 + Person0->Person1 + Person1->Hilary0 + Person1->Person0
		!ShakingProtocol[] } 
}

pred Test8{
	some disj Jocelyn0, Hilary0 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0
		spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		shaken = Jocelyn0->Jocelyn0 + Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Hilary0->Hilary0
		!ShakingProtocol[] } 
}

pred Test9{
	some disj Jocelyn0, Hilary0 : Person |  { 
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		Person = Jocelyn0 + Hilary0
		spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
		shaken = Jocelyn0->Jocelyn0 + Hilary0->Hilary0
		!ShakingProtocol[] } 
}

pred Test10{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Person = Hilary0 + Jocelyn0 + Person0 + Person1
		spouse = Hilary0->Jocelyn0 + Jocelyn0->Hilary0 + Person0->Person1 + Person1->Person0
		shaken = Hilary0->Person0 + Jocelyn0->Person1 + Person0->Hilary0 + Person1->Jocelyn0
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		ShakingProtocol[]  }
}

pred Test11{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Person = Hilary0 + Jocelyn0 + Person0 + Person1
		spouse = Hilary0->Person1 + Jocelyn0->Person0 + Person0->Jocelyn0 + Person1->Hilary0
		shaken = Hilary0->Jocelyn0 + Hilary0->Person0 + Jocelyn0->Hilary0 + Jocelyn0->Person1 + Person0->Hilary0 + Person1->Jocelyn0
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		ShakingProtocol[]  }
}


pred Test12{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Person = Hilary0 + Jocelyn0 + Person0 + Person1
		spouse = Hilary0->Person0 + Jocelyn0->Person1 + Person0->Hilary0 + Person1->Jocelyn0
		shaken = none->none
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		ShakingProtocol[]  }
}


pred Test13{
	some disj Jocelyn0, Hilary0, Person0, Person1 : Person |  { 
		Person = Hilary0 + Jocelyn0 + Person0 + Person1
		spouse = Hilary0->Jocelyn0 + Jocelyn0->Hilary0 + Person0->Person1 + Person1->Person0
		shaken = Hilary0->Person1 + Jocelyn0->Hilary0 + Jocelyn0->Jocelyn0 + Jocelyn0->Person1 + Person0->Hilary0 + Person0->Jocelyn0 + Person0->Person0 + Person0->Person1
		Jocelyn = Jocelyn0
		Hilary = Hilary0
		!ShakingProtocol[]}
}
