module farmer

open util/ordering[State] as ord

abstract sig Object { eats: set Object }
one sig Farmer, Fox, Chicken, Grain extends Object {}

fact eating { eats = Fox->Chicken + Chicken->Grain }

sig State {
   near: set Object,
   far: set Object
}

fact initialState {
   let s0 = ord/first |
     s0.near = Object && no s0.far
}

pred crossRiver [from, from', to, to': set Object] {
   (from' = from - Farmer - from'.eats and
    to' = to + Farmer) or
    (one item : from - Farmer | {
       // Generating from - Farmer - item - from'.eats requires cost >= 9
       from' = from - Farmer - item - from'.eats
       to' = to + Farmer + item })
}

fact stateTransition {
  all s: State, s': ord/next[s] {
    Farmer in s.near =>
      crossRiver[s.near, s'.near, s.far, s'.far] else
      crossRiver[s.far, s'.far, s.near, s'.near]
  }
}

pred solvePuzzle {
     ord/last.far = Object
}

run solvePuzzle for 8 State expect 1

assert NoQuantumObjects {
   no s : State | some x : Object | x in s.near and x in s.far
}

check NoQuantumObjects for 8 State expect 0

pred Test0{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {  
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0 + State3->Grain0
far = State1->Farmer0 + State1->Grain0 + State3->Farmer0
crossRiver[Grain0, Grain0,Farmer0,Farmer0]}
}

pred Test1{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0 + State3->Grain0
far = State1->Farmer0 + State3->Farmer0
!crossRiver[Grain0, Fox0,Fox0,Chicken0]}
}

pred Test2{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Chicken0 + State2->Chicken0 + State2->Farmer0 + State3->Chicken0
far = State1->Farmer0 + State1->Fox0 + State2->Fox0 + State3->Farmer0 + State3->Fox0
crossRiver[Grain0, Grain0,Farmer0,Farmer0]}
}

pred Test3{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0
far = State1->Farmer0 + State1->Grain0 + State3->Farmer0 + State3->Grain0
!crossRiver[Fox0, Farmer0,Grain0,Fox0]}
}

pred Test4{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Chicken0 + State2->Chicken0 + State2->Farmer0 + State3->Chicken0
far = State1->Farmer0 + State1->Fox0 + State2->Fox0 + State3->Farmer0 + State3->Fox0
!crossRiver[Fox0, Grain0,Grain0,Fox0]}
}

pred Test5{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0 + State3->Grain0
far = State1->Chicken0 + State1->Farmer0 + State3->Farmer0
crossRiver[Grain0, Grain0,Farmer0,Farmer0]}
}

pred Test6{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0
far = State1->Farmer0 + State3->Farmer0 + State3->Grain0
!crossRiver[Fox0, Chicken0,Grain0,Fox0]}
}

pred Test7{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  { 
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Chicken0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State3->Fox0
far = State1->Farmer0 + State1->Fox0 + State3->Farmer0
!crossRiver[Fox0, Grain0,Grain0,Fox0]}
}

pred Test8{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0 + State3->Grain0
far = State1->Chicken0 + State1->Farmer0 + State3->Chicken0 + State3->Farmer0
!crossRiver[Fox0, Farmer0,Grain0,Fox0]}
}

pred Test9{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Chicken0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State3->Fox0
far = State1->Farmer0 + State1->Fox0 + State3->Chicken0 + State3->Farmer0
crossRiver[Grain0, Grain0,Farmer0,Farmer0]}
}

pred Test10{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0
far = State1->Chicken0 + State1->Farmer0 + State2->Chicken0 + State3->Chicken0 + State3->Farmer0 + State3->Grain0
crossRiver[Grain0, Grain0,Farmer0,Farmer0]}
}

pred Test11{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0
far = State1->Chicken0 + State1->Farmer0 + State3->Farmer0 + State3->Grain0
crossRiver[Grain0, Grain0,Farmer0,Farmer0]}
}

pred Test12{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0
far = State1->Chicken0 + State1->Farmer0 + State3->Farmer0 + State3->Grain0
crossRiver[Fox0, Fox0,Farmer0,Farmer0]}
}

pred Test13{
some disj Farmer0, Fox0, Chicken0, Grain0 : Object | some disj State0, State1, State2, State3 : State |  {
Object = Chicken0 + Farmer0 + Fox0 + Grain0
eats = Chicken0->Grain0 + Fox0->Chicken0
Farmer = Farmer0
Fox = Fox0
Chicken = Chicken0
Grain = Grain0
State = State0 + State1 + State2 + State3
near = State0->Chicken0 + State0->Farmer0 + State0->Fox0 + State0->Grain0 + State1->Fox0 + State1->Grain0 + State2->Chicken0 + State2->Farmer0 + State2->Fox0 + State2->Grain0 + State3->Fox0
far = State1->Chicken0 + State1->Farmer0 + State3->Farmer0 + State3->Grain0
crossRiver[Chicken0, Chicken0,Farmer0,Farmer0]}
}
