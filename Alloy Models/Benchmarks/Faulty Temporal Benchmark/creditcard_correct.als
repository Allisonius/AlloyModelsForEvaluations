module cardCancellationElectrum

abstract sig Card {}
sig DebitCard extends Card {}
sig CreditCard extends Card {}

var sig issued in Card {}
var sig cancelled in Card {}
var sig unissued in Card {}

sig Customer {
  var cards: set Card,
  var debitCard: DebitCard
} {
	always debitCard in cards
}

fact card_state {
	always Card in issued + cancelled + unissued
	always disj[issued, cancelled, unissued]
}

fact cards_issued_to_one_customer {
	always all disj c1, c2: Customer | no (c1.cards & c2.cards)
	always no Customer.cards & (cancelled + unissued)
}

pred cancelled[toCancel, replacement: Card] {
	issued' = issued - toCancel + replacement
	unissued' = unissued - replacement
  cancelled' = cancelled + toCancel
let customer = ~cards[toCancel] {
  cards' = cards - customer->toCancel + customer->replacement
}
}

pred init {
	some issued
  some unissued
	some DebitCard
  some CreditCard
  no cancelled
}

fact traces {
  init
  always (can_cancel => cancellation else no_change)
}

pred can_cancel {
	some unissued
}

pred cancellation {
	one toCancel: issued | one replacement: unissued | cancelled[toCancel, replacement] 
}
pred no_change {
	issued' = issued
	cancelled' = cancelled
	unissued' = unissued
	cards' = cards
	debitCard' = debitCard
}

pred show {
} 

run show for 2 Customer, 6 Card

//https://alloytools.discourse.group/t/cant-get-a-model-to-change-with-time-electrum/85/4