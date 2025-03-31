module dijkstra

open util/ordering [State] as so

sig Process {}
sig Mutex {}

sig State {
  holds, waits: Process -> Mutex
} -- due to ordering, tests do not define State sig valuation

pred Deadlock() {
  \UO\ \E\
  \Q\ s: State | \Q\ p: Process | \UO\ p.(s.waits)
  -- some Process
  -- some s: State | all p: Process | some p.(s.waits)
}
