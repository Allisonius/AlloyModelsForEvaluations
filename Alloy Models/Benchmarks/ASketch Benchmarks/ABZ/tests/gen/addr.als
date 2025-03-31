abstract sig Listing { }
sig Address extends Listing { }
sig Name extends Listing { }
sig Book {
	entry: set Name,
	listed: entry ->set Listing
}
fun lookup [b: Book, n: Name] : set Listing { n.^(b.listed) }

fact {all b:Book | all n:b.entry | lone b.listed[n] }

fact { all b:Book | all n,l:Name | l in lookup[b,n] implies l in b.entry }
fact { all b:Book | all n:b.entry | not n in lookup[b,n] }

assert lookupEndsInAddr {
	all b:Book | all n:b.entry | some (lookup[b,n]&Address)
}
check lookupEndsInAddr for 4

pred lookupHelper[b: Book, n: Name] {}

pred Test0{
	some disj Name0, Address0, Name1 : Listing | some disj Book0 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0
		entry = Book0->Name0 + Book0->Name1
		listed = Book0->Name0->Name1 + Book0->Name1->Address0
		lookupHelper [Book0,Name1] } 
}

pred Test1{
	some disj Address0, Address1, Name0 : Listing | some disj Book0 : Book |  { 
		Address = Address0 + Address1
		Name = Name0
		Listing = Address0 + Address1 + Name0
		Book = Book0
		entry = Book0->Name0
		listed = Book0->Name0->Address1
		lookupHelper [Book0,Name0] } 
}

pred Test2{
	some disj Name0, Name1, Name2 : Listing | some disj Book0, Book1, Book2 : Book |  { 
		Name = Name0 + Name1 + Name2
		Listing = Name0 + Name1 + Name2
		Book = Book0 + Book1 + Book2
		no Address
		entry = Book0->Name1 + Book0->Name2 + Book1->Name0 + Book1->Name1 + Book1->Name2 + Book2->Name0 + Book2->Name2
		listed = Book0->Name1->Name2 + Book1->Name1->Name0 + Book1->Name2->Name1 + Book2->Name0->Name2
		lookupHelper [Book2,Name2] } 
}

pred Test3{
	some disj Name0, Address0, Name1 : Listing | some disj Book0 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0
		entry = Book0->Name0 + Book0->Name1
		listed = Book0->Name0->Name1
		lookupHelper [Book0,Name1] } 
}

pred Test4{
	some disj Name0, Address0, Name1 : Listing | some disj Book0 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0
		no entry
		no listed
		lookupHelper [Book0,Name1] } 
}

pred Test5{
	some disj Name0, Address0, Name1 : Listing | some disj Book0, Book1, Book2 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0 + Book1 + Book2
		entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1 + Book2->Name0 + Book2->Name1
		listed = Book0->Name0->Address0 + Book1->Name0->Address0 + Book1->Name1->Address0 + Book2->Name0->Address0 + Book2->Name1->Name0
		lookupHelper [Book2,Name1] } 
}

pred Test6{
	some disj Name0, Address0, Name1 : Listing | some disj Book0, Book1, Book2 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0 + Book1 + Book2
		entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1 + Book2->Name0 + Book2->Name1
		listed = Book0->Name0->Address0 + Book0->Name1->Address0 + Book1->Name0->Address0 + Book1->Name1->Address0 + Book2->Name1->Name0
		lookupHelper [Book2,Name1] } 
}

pred Test7{
	some disj Name0, Name1, Name2 : Listing | some disj Book0 : Book |  { 
		Name = Name0 + Name1 + Name2
		Listing = Name0 + Name1 + Name2
		Book = Book0
		no Address
		no entry
		no listed
		lookupHelper [Book0,Name2] } 
}

pred Test8{
	some disj Name0, Name1, Name2 : Listing | some disj Book0, Book1 : Book |  { 
		Name = Name0 + Name1 + Name2
		Listing = Name0 + Name1 + Name2
		Book = Book0 + Book1
		no Address
		entry = Book0->Name0 + Book0->Name1 + Book0->Name2 + Book1->Name0 + Book1->Name1 + Book1->Name2
		listed = Book0->Name1->Name0 + Book0->Name2->Name0 + Book1->Name0->Name1 + Book1->Name1->Name2
		lookupHelper [Book1,Name2] } 
}

pred Test9{
	some disj Name0, Name1, Name2 : Listing | some disj Book0, Book1, Book2 : Book |  { 
		Name = Name0 + Name1 + Name2
		Listing = Name0 + Name1 + Name2
		Book = Book0 + Book1 + Book2
		no Address
		entry = Book2->Name0 + Book2->Name1
		no listed
		lookupHelper [Book2,Name2] } 
}

pred Test10{
	some disj Name0 : Listing | some disj Book0 : Book |  { 
		Name = Name0
		Listing = Name0
		Book = Book0
		no Address
		entry = Book0->Name0
		no listed
		lookupHelper [Book0,Name0] } 
}

pred Test11{
	some disj Name0, Address0, Name1 : Listing | some disj Book0 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0
		entry = Book0->Name0 + Book0->Name1
		listed = Book0->Name0->Address0 + Book0->Name1->Address0
		lookupHelper [Book0,Name1] } 
}

pred Test12{
	some disj Name0 : Listing | some disj Book0, Book1 : Book |  { 
		Name = Name0
		Listing = Name0
		Book = Book0 + Book1
		no Address
		no entry
		no listed
		lookupHelper [Book1,Name0] } 
}

pred Test13{
	some disj Name0, Address0, Name1 : Listing | some disj Book0, Book1, Book2 : Book |  { 
		Address = Address0
		Name = Name0 + Name1
		Listing = Name0 + Address0 + Name1
		Book = Book0 + Book1 + Book2
		entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1 + Book2->Name0
		listed = Book0->Name1->Name0 + Book1->Name0->Name1 + Book1->Name1->Address0 + Book2->Name0->Address0
		lookupHelper [Book2,Name1] } 
}
