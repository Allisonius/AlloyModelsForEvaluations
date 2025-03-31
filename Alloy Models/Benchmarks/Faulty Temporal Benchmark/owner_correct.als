sig Thing {
}

sig Owner {
	var possessions : set Thing
}

pred createThing[t : Thing, o : Owner] {

	// Guard: no one owns this security
	o -> t not in possessions

	// Effect: stakeholder `a` owns this security
	possessions' = possessions + o -> t
}

pred init {
	no possessions
}

pred stutter {
	possessions' = possessions
}

pred owned[t : Thing] {
	t in Owner.possessions
}

fact traces {
	init
	always {
		stutter or
		(one t : Thing, o : Owner | createThing[t, o])
	} 
}

run {
	eventually { all t : Thing | owned[t] }
} for 3 but exactly 3 Thing

//https://alloytools.discourse.group/t/learning-temporal-alloy-getting-alloy-to-do-only-one-thing-per-time-step/291