sig Student {}

sig Course { var roster: set Student }

pred init {
  some Course
  some Student // unsat
  no roster    // unsat
}

pred stutter {
  roster' = roster
}

pred join [s: Student, c: Course] {
  // guard: doesn't make sense for the same student to join over and over
  s not in c.roster

  c.roster' = c.roster + s
}

fact traces {
  init
  always {
    stutter or
    (one s: Student, c: Course | join[s, c])
  }
}

run traces {
  eventually { all s : Student | some c: Course | s in c.roster } // unsat
} for 3
//https://alloytools.discourse.group/t/temporal-model-add-an-instance-to-a-set-of-instances-inside-a-field/292