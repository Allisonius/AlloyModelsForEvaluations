module dijkstra

open util/ordering [State] as so

sig Process {}
sig Mutex {}

sig State {
  holds, waits: Process -> Mutex
} -- due to ordering, tests do not define State sig valuation

pred Deadlock() {
  some \E,e1\
  some s: State | all p: Process | some \E,e2\
  -- some Process
  -- some s: State | all p: Process | some p.(s.waits)
}
