sig Student {}

sig Course { roster: set Student }

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