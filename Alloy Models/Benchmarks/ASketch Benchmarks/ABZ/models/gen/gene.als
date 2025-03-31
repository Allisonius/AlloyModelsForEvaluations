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

fact NoIncest {
    // Generating p.spouse.parents & p.parents requires cost >= 9
    no p: Person | some \E\
    no p: Person | some p.spouse & p.parents
    }

pred Show {
    some p: Person - (Adam + Eve) | some p.spouse
    }
run Show for 6 expect 1



