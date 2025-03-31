module farmer

abstract sig Object { eats: set Object }
one sig Farmer, Fox, Chicken, Grain extends Object {}

fact eating { eats = Fox->Chicken + Chicken->Grain }

sig State {
   near: set Object,
   far: set Object
}

// Should synthesize
// from' = from - Farmer - from'.eats && to' =  + Farmer
// from' = from - Farmer - item - from'.eats && to' = to + Farmer + item
pred crossRiver [from, from', to, to': set Object] {
  ( from' = from - Farmer \BO\ \E\ && to' = \E\ + Farmer )
  ||
  (some item: from - Farmer { from' = from - Farmer - item \BO\ \E\ && to' = \E\ + Farmer + item })
}


pred equiv [from, from', to, to': set Object] {
  ( from' = from - Farmer - from'.eats && to' =  to + Farmer )
  ||
  (some item: from - Farmer { from' = from - Farmer - item - from'.eats && to' = to + Farmer + item })
}

pred faulty [from, from', to, to': set Object] {
  // either the Farmer takes no items
  ( from' = from - Farmer &&
    to' = to - to.eats + Farmer ) ||
  // or the Farmer takes one item
  (some item: from - Farmer {
    from' = from - Farmer - item
    to' = to - to.eats + Farmer + item
  })
}

pred revealFault[from, from', to, to': set Object] {
	!{faulty[from, from', to, to'] <=> equiv[from, from', to, to'] }
}