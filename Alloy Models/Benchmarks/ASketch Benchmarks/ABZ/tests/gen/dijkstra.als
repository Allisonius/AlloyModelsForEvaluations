module dijkstra

open util/ordering [State] as so
open util/ordering [Mutex] as mo

sig Process {}
sig Mutex {}

sig State { holds, waits: Process -> Mutex }

pred Initial [s: State]  { no s.holds + s.waits }

pred IsFree [s: State, m: Mutex] {
   no m.~(s.holds)
}

pred IsStalled [s: State, p: Process] { some p.(s.waits) }

pred GrabMutex [s: State, p: Process, m: Mutex, s': State] {
   !s.IsStalled[p]
   m !in p.(s.holds)
   all m': p.(s.holds) | mo/lt[m',m]
   s.IsFree[m] => {
      p.(s'.holds) = p.(s.holds) + m
      no p.(s'.waits)
   } else {
    p.(s'.holds) = p.(s.holds)
    p.(s'.waits) = m
  }
  all otherProc: Process - p | {
     otherProc.(s'.holds) = otherProc.(s.holds)
     otherProc.(s'.waits) = otherProc.(s.waits)
  }
}

pred ReleaseMutex [s: State, p: Process, m: Mutex, s': State] {
   !s.IsStalled[p]
   m in p.(s.holds)
   p.(s'.holds) = p.(s.holds) - m
   no p.(s'.waits)
   no m.~(s.waits) => {
      no m.~(s'.holds)
      no m.~(s'.waits)
   } else {
      some lucky: m.~(s.waits) | {
        m.~(s'.waits) = m.~(s.waits) - lucky
        m.~(s'.holds) = lucky
      }
   }
  all mu: Mutex - m {
    mu.~(s'.waits) = mu.~(s.waits)
    mu.~(s'.holds)= mu.~(s.holds)
  }
}

pred GrabOrRelease  {
    Initial[so/first] &&
    (
    all pre: State - so/last  | let post = so/next [pre] |
       (post.holds = pre.holds && post.waits = pre.waits)
        ||
       (some p: Process, m: Mutex | pre.GrabMutex [p, m, post])
        ||
       (some p: Process, m: Mutex | pre.ReleaseMutex [p, m, post])
    )
}

pred Deadlock  {
         some Process
         some s: State | all p: Process | some p.(s.waits)
}

assert DijkstraPreventsDeadlocks {
   GrabOrRelease => ! Deadlock
}

pred ShowDijkstra  {
    GrabOrRelease && Deadlock
    some waits
}

pred Test0{
	some Process0 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex1
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2
		ReleaseMutex[State1, Process0, Mutex1, State2]
	}
}

pred Test1{
	some Process0 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		!ReleaseMutex[State2, Process0, Mutex2, State2]
	}
}

pred Test2{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex1 + State0->Process1->Mutex0 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex0
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		ReleaseMutex[State0, Process1, Mutex2, State2]
	}
}	

pred Test3{
	some Process0 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		!ReleaseMutex[State2, Process0, Mutex1, State1]
	}
}	

pred Test4{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State2->Process0->Mutex0
		ReleaseMutex[State2, Process1, Mutex1, State1]
	}
}	

pred Test5{
	some Process0 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		!ReleaseMutex[State0, Process0, Mutex2, State0]
	}
}

pred Test6{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex1 + State0->Process1->Mutex0 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		ReleaseMutex[State1, Process1, Mutex2, State2]
	}
}

pred Test7{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 +  State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process1->Mutex1 +  State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 +  State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process1->Mutex1 +  State2->Process1->Mutex2
		waits = State0->Process1->Mutex0 + State0->Process1->Mutex1 +  State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 +  State1->Process0->Mutex2 + State2->Process1->Mutex0
		!ReleaseMutex[State0, Process1, Mutex0, State1]
	}
}

pred Test8{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2 + State2->Process1->Mutex1
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		ReleaseMutex[State1, Process1, Mutex2, State2]
	}
}	

pred Test9{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
		waits = State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex2
		!ReleaseMutex[State0, Process1, Mutex0, State1]
	}
}	

pred Test10{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		waits = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		ReleaseMutex[State1, Process1, Mutex2, State2]
	}
}	

pred Test11{
	some Process0, Process1, Process2 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1 + Process2
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process2->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process2->Mutex0 + State1->Process2->Mutex1 + State1->Process2->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
		waits = State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process2->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process2->Mutex0 + State1->Process2->Mutex1 + State1->Process2->Mutex2 + State2->Process0->Mutex1 + State2->Process1->Mutex0 + State2->Process1->Mutex2 + State2->Process2->Mutex1 + State2->Process2->Mutex2
		!ReleaseMutex[State0, Process1, Mutex0, State1]
	}
}

pred Test12{
	some Process0, Process1 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process1->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex1
		!ReleaseMutex[State1, Process1, Mutex2, State2]
	}
}

pred Test13{
	some Process0, Process1, Process2 : Process | some Mutex0, Mutex1, Mutex2 : Mutex | some State0, State1, State2 : State {
		Process = Process0 + Process1 + Process2
		Mutex = Mutex0 + Mutex1 + Mutex2
		State = State0 + State1 + State2
		holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process2->Mutex1 + State0->Process2->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State1->Process2->Mutex0 + State1->Process2->Mutex2 + State2->Process0->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2 + State2->Process2->Mutex0
		waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State0->Process2->Mutex0 + State0->Process2->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex1
		!ReleaseMutex[State0, Process2, Mutex0, State2]
	}
}
