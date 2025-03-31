//Automatically generated test suite using iterative sketching with an equivalent solution

pred Test0{
	some disj Person0 : Person | some disj alas0, peds0, Group0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0 + Group0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0 + Person0->Group0
		located_in = Room0->alas0 + Room0->peds0 } 
}

pred Test1{
	some disj Person0 : Person | some disj alas0, peds0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0
		located_in = seclab0->alas0 + seclab0->peds0 + Room0->alas0 + Room0->peds0 } 
}

pred Test2{
	some disj Person0 : Person | some disj alas0, peds0, Group0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0 + Group0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0
		located_in = seclab0->alas0 + seclab0->peds0 + Room0->alas0 + Room0->peds0 } 
}

pred Test3{
	some disj Person0 : Person | some disj alas0, peds0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0
		located_in = seclab0->alas0 + Room0->alas0 + Room0->peds0 } 
}

pred Test4{
	some disj Person0 : Person | some disj alas0, peds0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0
		located_in = seclab0->peds0 + Room0->alas0 + Room0->peds0 } 
}

pred Test5{
	some disj Person0 : Person | some disj alas0, peds0, Group0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0 + Group0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0 + Person0->Group0
		located_in = seclab0->alas0 + seclab0->peds0 + Room0->alas0 + Room0->peds0 } 
}

pred Test6{
	some disj Person0 : Person | some disj alas0, peds0, Group0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0 + Group0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0
		located_in = seclab0->alas0 + seclab0->peds0 + Room0->alas0 + Room0->peds0 + Room0->Group0 } 
}

pred Test7{
	some disj Person0 : Person | some disj alas0, peds0, Group0 : Group | some disj seclab0, Room0 : Room |  { 
		Person = Person0
		alas = alas0
		peds = peds0
		Group = alas0 + peds0 + Group0
		seclab = seclab0
		Room = seclab0 + Room0
		member_of = Person0->alas0 + Person0->peds0
		located_in = seclab0->alas0 + seclab0->peds0 + seclab0->Group0 + Room0->alas0 + Room0->peds0 } 
}


