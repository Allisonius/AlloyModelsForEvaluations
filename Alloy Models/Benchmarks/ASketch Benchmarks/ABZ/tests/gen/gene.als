module examples/toys/genealogy

abstract sig Person {spouse: lone Person, parents: set Person}
sig Man, Woman extends Person {}
one sig Eve extends Woman {}
one sig Adam extends Man {}

fact Biology {
    no p: Person | p in p.^parents
    }

fact Bible {
    all p: Person - (Adam + Eve) | one mother: Woman, father: Man |
        p.parents = mother + father
    no (Adam + Eve).parents
    Adam.spouse = Eve
    }

fact SocialNorms {
    no p: Person | p.spouse = p
    spouse = ~spouse
    Man.spouse in Woman && Woman.spouse in Man
    }

pred NoIncest {
    no p: Person | some  p.spouse.parents & p.parents
    no p: Person | some p.spouse & p.parents
}
run {!NoIncest} for 4
pred Test0{
	some disj Adam0, Eve0, Woman0 : Person |  { 
		Adam = Adam0
		Man = Adam0
		Eve = Eve0
		Woman = Eve0 + Woman0
		Person = Adam0 + Eve0 + Woman0
		spouse = Adam0->Eve0 + Eve0->Adam0
		parents = Woman0->Adam0 + Woman0->Eve0
		NoIncest[] } 
}

pred Test1{
	some disj Adam0, Eve0, Woman0, Woman1, Woman2, Man0 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1 + Woman2
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Woman2 + Man0
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman1->Man0 + Man0->Woman1
		parents = Woman0->Adam0 + Woman0->Woman2 + Woman1->Adam0 + Woman1->Eve0 + Woman2->Adam0 + Woman2->Woman1 + Man0->Adam0 + Man0->Woman0
		!NoIncest[] } 
}

pred Test2{
	some disj Adam0, Eve0, Man0 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0
		Eve = Eve0
		Woman = Eve0
		Person = Adam0 + Eve0 + Man0
		spouse = Adam0->Eve0 + Eve0->Adam0
		parents = Man0->Adam0 + Man0->Eve0
		NoIncest[] } 
}

pred Test3{
	some disj Adam0, Eve0, Woman0, Woman1, Man0, Man1 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0 + Man1
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Man0 + Man1
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman0->Man0 + Man0->Woman0
		parents = Woman0->Eve0 + Woman0->Man1 + Woman1->Adam0 + Woman1->Eve0 + Man0->Adam0 + Man0->Woman1 + Man1->Adam0 + Man1->Woman1
		NoIncest[] } 
}

pred Test4{
	some disj Adam0, Eve0, Woman0, Woman1, Woman2, Man0 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1 + Woman2
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Woman2 + Man0
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman1->Man0 + Man0->Woman1
		parents = Woman0->Adam0 + Woman0->Woman2 + Woman1->Adam0 + Woman1->Woman0 + Woman2->Adam0 + Woman2->Eve0 + Man0->Adam0 + Man0->Woman2
		!NoIncest[] } 
}

pred Test5{
	some disj Adam0, Eve0, Woman0, Woman1 : Person |  { 
		Adam = Adam0
		Man = Adam0
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1
		spouse = Adam0->Eve0 + Eve0->Adam0
		parents = Woman0->Adam0 + Woman0->Woman1 + Woman1->Adam0 + Woman1->Eve0
		NoIncest[] } 
}

pred Test6{
	some disj Adam0, Eve0, Woman0, Woman1, Man0, Man1 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0 + Man1
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Man0 + Man1
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman0->Man0 + Man0->Woman0
		parents = Woman0->Adam0 + Woman0->Woman1 + Woman1->Adam0 + Woman1->Eve0 + Man0->Eve0 + Man0->Man1 + Man1->Adam0 + Man1->Woman1
		NoIncest[] } 
}

pred Test7{
	some disj Adam0, Eve0, Woman0, Woman1, Man0, Man1 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0 + Man1
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Man0 + Man1
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman0->Man0 + Woman1->Man1 + Man0->Woman0 + Man1->Woman1
		parents = Woman0->Eve0 + Woman0->Man1 + Woman1->Adam0 + Woman1->Eve0 + Man0->Adam0 + Man0->Eve0 + Man1->Eve0 + Man1->Man0
		!NoIncest[] } 
}

pred Test8{
	some disj Adam0, Eve0, Woman0, Man0, Man1 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0 + Man1
		Eve = Eve0
		Woman = Eve0 + Woman0
		Person = Adam0 + Eve0 + Woman0 + Man0 + Man1
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman0->Man0 + Man0->Woman0
		parents = Woman0->Eve0 + Woman0->Man1 + Man0->Eve0 + Man0->Man1 + Man1->Adam0 + Man1->Eve0
		!NoIncest[] } 
}

pred Test9{
	some disj Adam0, Eve0, Woman0, Woman1, Man0, Man1 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0 + Man1
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Man0 + Man1
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman1->Man1 + Man1->Woman1
		parents = Woman0->Eve0 + Woman0->Man1 + Woman1->Adam0 + Woman1->Eve0 + Man0->Adam0 + Man0->Eve0 + Man1->Eve0 + Man1->Man0
		!NoIncest[] } 
}

pred Test10{
	some disj Adam0, Eve0, Woman0, Woman1, Man0, Man1 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0 + Man1
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Man0 + Man1
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman0->Man0 + Man0->Woman0
		parents = Woman0->Woman1 + Woman0->Man1 + Woman1->Adam0 + Woman1->Eve0 + Man0->Adam0 + Man0->Woman1 + Man1->Adam0 + Man1->Eve0
		!NoIncest[] } 
}

pred Test11{
	some disj Adam0, Eve0, Woman0, Woman1, Woman2, Man0 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1 + Woman2
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Woman2 + Man0
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman1->Man0 + Man0->Woman1
		parents = Woman0->Woman2 + Woman0->Man0 + Woman1->Adam0 + Woman1->Woman2 + Woman2->Eve0 + Woman2->Man0 + Man0->Adam0 + Man0->Eve0
		!NoIncest[] } 
}

pred Test12{
	some disj Adam0, Eve0, Woman0, Woman1, Man0 : Person |  { 
		Adam = Adam0
		Man = Adam0 + Man0
		Eve = Eve0
		Woman = Eve0 + Woman0 + Woman1
		Person = Adam0 + Eve0 + Woman0 + Woman1 + Man0
		spouse = Adam0->Eve0 + Eve0->Adam0 + Woman0->Man0 + Man0->Woman0
		parents = Woman0->Adam0 + Woman0->Woman1 + Woman1->Adam0 + Woman1->Eve0 + Man0->Adam0 + Man0->Woman1
		!NoIncest[] } 
}


pred Test13{
	some disj Adam0, Eve0, Man0, Woman0 : Person{
		Person = Adam0 + Eve0 + Man0 + Woman0
		spouse = Adam0->Eve0 + Eve0->Adam0 + Man0->Woman0 + Woman0->Man0
		parents = Man0->Adam0 + Man0->Eve0 + Woman0->Eve0 + Woman0->Man0
		Man = Adam0 + Man0
		Adam = Adam0
		Woman = Eve0 + Woman0
		Eve = Eve0
		!NoIncest[]
	}
}
