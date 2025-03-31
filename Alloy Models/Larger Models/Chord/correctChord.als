/* ========================================================================
A MODEL IN ALLOY 
OF A CORRECT VERSION OF THE CHORD RING-MAINTENANCE PROTOCOL
   Pamela Zave, August 2016.
      Copyright AT&T Labs, Inc., 2016, 2018.
======================================================================== */

open util/ordering[Time] as trace
open util/ordering[Node] as ring

sig Time { }

/* ========================================================================
THEOREMS ABOUT IDENTIFIER SPACES
   Node is a finite, totally ordered set.  It is turned into a circular
identifier space by the definitions, which build in the concept that the
order "wraps around" from the last to the first elements.
======================================================================== */

pred between [n1, nb, n2: Node] {
   lt[n1,n2] =>   ( lt[n1,nb] && lt[nb,n2] )
             else ( lt[n1,nb] || lt[nb,n2] )  }

assert AnyBetweenAny { all disj n1, n2: Node | between [n1, n2, n1] }
check AnyBetweenAny for 10                                            -- OK

pred includedIn [n1, nb, n2: Node] {
   lt[n1,n2] =>   ( lte[n1,nb] && lte[nb,n2] )
             else ( lte[n1,nb] || lte[nb,n2] )  }

assert AnyIncludedInAny { all n1, n2: Node | includedIn [n1, n2, n1] }
check AnyIncludedInAny for 10                                         -- OK

assert Untitled { all n1, nb, n2: Node |
       includedIn [n1, nb, n2] 
   <=> (between [n1, nb, n2] || n1 = nb || nb = n2) }
check Untitled for 10                                                 -- OK

assert IncludedReversesBetween { all disj n1, n2: Node, nb: Node |
   ! between [n1, nb, n2] <=> includedIn [n2, nb, n1] }
check IncludedReversesBetween for 10                                  -- OK

assert ChainedIntervals { all disj n1, n2, n3: Node, nb: Node |
      between [n1, n2, n3] 
   && includedIn [n1, nb, n2] && includedIn [n2, nb, n3] => nb = n2 }
check ChainedIntervals for 10                                         -- OK

assert LocationOfUnskippedNode { all disj n1, n2, n3: Node, nb: Node |
   ! between [n1, nb, n2] && ! between [n2, nb, n3] 
=> (nb = n1 || nb = n2 || nb = n3 || between [n3, nb, n1]) }
check LocationOfUnskippedNode for 10                                  -- OK

/* ========================================================================
STATE STRUCTURE AND PARAMETERS
   Sequences are built and manipulated with the util/sequniv library model.
   An "extended successor list" is the concatenation of a member and its
successor list.
   An instance of Chord has two parameters:
1) The size of the identifier space, which is also the maximum number of
   network nodes.  In this model, a node itself, its IP address, and its
   hashed identifier are all conflated.  For analysis, the size of the
   identifier space is the scope of Node.
2) The length of successor lists, which is the scope of seq.  Also,
   Base.size must be set to this number plus one.  Also, in sig Succs, the
   last index of each successor list must be set to this number minus one.
======================================================================== */

one sig Base { size: Int } { size = 4 }

sig Node { }

sig Succs { list: seq Node } { lastIdx[list] = 2 }    -- length is always 3

abstract sig Status { }
   one sig Stabilizing, Rectifying extends Status { }

sig NetState {
   time: Time,
   members: set Node,
   succ: members -> one Succs,
   prdc: members -> one Node,
   status: members -> lone Status,
   saved: members -> lone Node,
   bestSucc: members -> lone members,
   principals: set members             } { 
-- a member has a saved node if and only if it has a status
   status.Status = saved.Node
-- bestSucc is derived from successor lists; a member's bestSucc is its 
-- first live successor, if any.
   all m: members | 
      no (m.succ.list.elems & members) => no m.bestSucc
   all m: members | 
      some (m.succ.list.elems & members) 
   => m.bestSucc =
      {  b0: members |
            b0 in m.succ.list.elems 
         && (no b1: members | 
               b1 in m.succ.list.elems 
            && lt [m.succ.list.idxOf[b1], m.succ.list.idxOf[b0]]
            )                                                  }
-- principals is also derived from successor lists.  A member is a 
-- principal member if, for all other members, it is not skipped by any
-- adjacent pair in that other member's extended successor list.
   principals = { p: members | all m: members |
         ! between [m, p, m.succ.list[0]]
      && (all j: m.succ.list.inds - m.succ.list.lastIdx |
            ! between [m.succ.list[j], p, m.succ.list[plus[j,1]] ] ) }
}

pred IsNetState [s: NetState] { }
run IsNetState for 4 but 1 Time, 1 Base, 3 seq  

pred ImperfectNetState [s: NetState] {          -- for validating the model
   some n: Node, disj m2, m3, m4, m5: s.members | 
      n ! in s.members   
   && no m2.(s.bestSucc)
   && some m3.(s.bestSucc)
   && m4 ! in s.principals 
   && m5 in s.principals                        }
run ImperfectNetState for 8 but 1 Time, 1 NetState, 1 Base, 3 seq     -- OK
                                  -- but inconsistent with TraceConstraints

fact NetStateVariant { all disj s, s': NetState | s.time != s'.time }

/* ========================================================================
PROPERTIES OF NETWORK STATES
======================================================================== */

pred Invariant [s: NetState] {
-- one live successor
   (s.bestSucc).Node = s.members
-- base of principals
   gte [#(s.principals), Base.size] }

run Invariant for 4 but 1 Time, 1 NetState, 1 Base, 3 seq             -- OK

pred OrderedSuccessorLists [s: NetState] {
all m: s.members | {
   all disj j, k: m.(s.succ).list.inds |
      lt [j, k] => between [m, m.(s.succ).list[j], m.(s.succ).list[k]]
   all disj j, k, l: m.(s.succ).list.inds |
      lt [j, k] && lt [k, l] 
   => between[m.(s.succ).list[j], m.(s.succ).list[k], m.(s.succ).list[l]]}}

assert InvariantEnsuresOrderedSuccessorLists {
   all s: NetState | Invariant [s] => OrderedSuccessorLists [s] }
check InvariantEnsuresOrderedSuccessorLists for 12                    -- OK
   but 1 Time, 1 NetState, 1 Base, 3 seq  

pred NoDuplicates [s: NetState] {
   all m: s.members | {
   no j: m.(s.succ).list.inds | m = m.(s.succ).list[j]
   no disj j, k: m.(s.succ).list.inds | 
      m.(s.succ).list[j] =  m.(s.succ).list[k]     } }

assert InvariantEnsuresNoDuplicates {
   all s: NetState | Invariant [s] => NoDuplicates [s] }
check InvariantEnsuresNoDuplicates for 12                             -- OK
   but 1 Time, 1 NetState, 1 Base, 3 seq  

pred PrincipalsAreRingMembers [s: NetState] {
   let ringMembers = { m: s.members | m in m.^(s.bestSucc) } |
      s.principals in ringMembers                            }

assert InvariantEnsuresPrincipalsInRing {
   all s: NetState | Invariant [s] => PrincipalsAreRingMembers [s] }
check InvariantEnsuresPrincipalsInRing for 12                         -- OK
   but 1 Time, 1 NetState, 1 Base, 3 seq  

pred OneOrderedRing [s: NetState] {
   let ringMembers = { m: s.members | m in m.^(s.bestSucc) } |
      some ringMembers                                 -- at least one ring
   && (all disj m1, m2: ringMembers | m1 in m2.^(s.bestSucc) ) 
                                                        -- at most one ring
   && (all disj m1, m2, mb: ringMembers |         
         m2 = m1.(s.bestSucc) => ! between [m1, mb, m2]     -- ordered ring
      )
}

assert InvariantEnsuresOneOrderedRing {
   all s: NetState | Invariant [s] => OneOrderedRing [s] }
check InvariantEnsuresOneOrderedRing for 10                           -- OK
   but 1 Time, 1 NetState, 1 Base, 3 seq  

pred ConnectedAppendages [s: NetState] { 
   let ringMembers = { m: s.members | m in m.^(s.bestSucc) } |
      all a: s.members - ringMembers |              -- a is in an appendage
         some r: ringMembers | r in a.^(s.bestSucc)     -- yet reaches ring
}

assert InvariantEnsuresConnectedAppendages {
   all s: NetState | Invariant [s] => ConnectedAppendages [s] }
check InvariantEnsuresConnectedAppendages for 9                       -- OK
   but 1 Time, 1 NetState, 1 Base, 3 seq  

pred Ideal [s: NetState] { 
   Invariant [s]
   let ringMembers = { m: s.members | m in m.^(s.bestSucc) } |
      ringMembers = s.members
   all m1, m2: s.members |
      m1.(s.succ).list[0] = m2 <=> m2.(s.prdc) = m1
   all m: s.members |
      let succ1 = m.(s.succ).list[0] |
      let succ2 = succ1.(s.succ).list[0] |
      let succ3 = succ2.(s.succ).list[0] |
         m.(s.succ).list[1] = succ2 && m.(s.succ).list[2] = succ3  }
run Ideal for 5 but 1 Time, 1 NetState, 1 Base, 3 seq                 -- OK

/* ========================================================================
TRACE STRUCTURE
======================================================================== */

fact TraceConstraints {
   all s: NetState | 
-- if a state is not the latest, it has an immediate successor
   (  ((some s': NetState | gt [s'.time, s.time])
      => some s'': NetState | s''.time = next [s.time] )
-- the earliest state satisfies the invariant
   && ((no s': NetState | lt [s'.time, s.time]) => Invariant [s] )
   )
-- adjacent pairs represent legitimate state transitions
   all s, s': NetState |
      s'.time = next [s.time] => NextNetState [s, s']
} 

pred NextNetState [s, s': NetState] {
   (  Stutter [s, s']
   || some n: Node | Fail [s, s', n]
   || some n: Node | Join [s, s', n]
   || some n: Node | StabilizeFromSuccessor [s, s', n]
   || some n: Node | StabilizeFromPredecessor [s, s', n]
   || some n: Node | Rectify [s, s', n]
   )
}

pred Stutter [s, s': NetState] {
   s'.time = next [s.time] && s'.members = s.members && s'.succ = s.succ
   s'.prdc = s.prdc && s'.status = s.status && s'.saved = s.saved      }

/* ========================================================================
STATE TRANSITIONS
======================================================================== */

pred Fail [s, s': NetState, f: Node] {
-- PRECONDITIONS 
-- Note that a member can fail even if it is in the middle of an operation.
   f in s.members
-- A member cannot fail if it would leave another member with no live
-- successor.
   all m: s.members - f |
      f in m.(s.succ).list.elems 
   => some m': s.members - f | m' in m.(s.succ).list.elems
-- A principal member cannot fail if the number of principals is Base.size
-- or less.
   f in s.principals => gt [# (s.principals), Base.size]
-- POSTCONDITIONS
   s'.time = next [s.time]
   s'.members = s.members - f
   s'.succ = s'.members <: s.succ 
   s'.prdc = s'.members <: s.prdc
   s'.status = s'.members <: s.status
   s'.saved = s'.members <: s.saved
}
run Fail for 5 but 2 Time, 2 NetState, 1 Base, 3 seq                  -- OK

assert FailPreservesInvariant {
   all s, s': NetState, f: Node |
      Invariant [s] && Fail [s, s', f] => Invariant [s'] }
check FailPreservesInvariant for 9 
   but 2 Time, 2 NetState, 1 Base, 3 seq                              -- OK

pred Join [s, s': NetState, j: Node] {
-- PRECONDITIONS 
   j ! in s.members
   some m: s.members | 
      between [m, j, m.(s.succ).list[0]]
-- j queries m to get its successor list
-- POSTCONDITIONS
   && s'.time = next [s.time]
   && s'.members = s.members + j
   && s'.succ = s.succ + (j -> m.(s.succ))
   && s'.prdc = s.prdc + (j -> m)
   && s'.status = s.status 
   && s'.saved = s.saved 
}
run Join for 5 but 2 Time, 2 NetState, 1 Base, 3 seq                  -- OK

assert JoinPreservesInvariant {
   all s, s': NetState, j: Node |
      Invariant [s] && Join [s, s', j] => Invariant [s'] }
check JoinPreservesInvariant for 9
   but 2 Time, 2 NetState, 1 Base, 3 seq                              -- OK

pred StabilizeFromSuccessor [s, s': NetState, t: Node] {
-- PRECONDITIONS 
   t in s.members
   no t.(s.status)
-- t queries its successor to get its successor list and predecessor, if
-- possible
-- POSTCONDITIONS
   s'.time = next [s.time]
   s'.members = s.members 
   s'.prdc = s.prdc
   let succ1 = t.(s.succ).list[0] |
   succ1 ! in s.members
   =>                                                  -- successor is dead
      (  (some u: Succs | 
         u.list=add[rest[t.(s.succ).list],ring/next[last[t.(s.succ).list]]]
         && s'.succ = s.succ ++ (t -> u)                                  )
      -- the update to t's list drops the dead first entry, shifts all the
      -- other entries forward, and pads the list out at the end to the 
      -- standard length by adding another entry that is next in the
      -- ordering after the previous last entry, now op is done
      && s'.status = s.status ++ (t.(s'.succ).list[0] -> Rectifying)
      && s'.saved = s.saved ++ (t.(s'.succ).list[0] -> t)
      )
   else                                                -- successor is live
      (  (some u: Succs | 
            u.list = insert [succ1.(s.succ).list, 0, succ1]
         && s'.succ = s.succ ++ (t -> u)                  
         )                 -- t incorporates its successor's successor list
      && (between [t, succ1.(s.prdc), succ1]
         =>                  -- successor's predecessor is better successor
            (  s'.status = s.status ++ (t -> Stabilizing) 
            && s'.saved = s.saved ++ (t -> succ1.(s.prdc)) )   
            -- the next event will query the predecessor
         else      -- successor's predecessor is no improvement, op is done
            (  s'.status = s.status ++ (t.(s'.succ).list[0] -> Rectifying)
            && s'.saved = s.saved ++ (t.(s'.succ).list[0] -> t)          )
            -- this notification could override the successor's Stabilizing
            -- status, but that doesn't break anything or restrict the 
            -- possible behaviors, so we can accept it as a modeling 
            -- shortcut
         )
      )
}

pred StabilizeDead [s, s': NetState, t: Node] {
   StabilizeFromSuccessor [s, s', t] && t.(s.succ).list[0] ! in s.members }
run StabilizeDead for 5 but 
   2 Time, 2 NetState, 6 Succs, 1 Base, 3 seq                         -- OK

pred StabilizeToNextStep [s, s': NetState, t: Node] {
   let succ1 = t.(s.succ).list[0] |
      StabilizeFromSuccessor [s, s', t] 
   && succ1 in s.members && between [t, succ1.(s.prdc), succ1] }
run StabilizeToNextStep for 5 but 
   2 Time, 2 NetState, 6 Succs, 1 Base, 3 seq                         -- OK

pred StabilizeWithListChange [s, s': NetState, t: Node] {
   let succ1 = t.(s.succ).list[0] |
      StabilizeFromSuccessor [s, s', t] && succ1 in s.members 
   && ! between [t, succ1.(s.prdc), succ1] && t.(s.succ) != t.(s'.succ) }
run StabilizeWithListChange for 5 but 
   2 Time, 2 NetState, 6 Succs, 1 Base, 3 seq                         -- OK

assert StabilizeFromSuccessorPreservesInvariant {
   all s, s': NetState, t: Node |
      Invariant [s] && StabilizeFromSuccessor [s, s', t] => Invariant [s']}
check StabilizeFromSuccessorPreservesInvariant for 9
   but 2 Time, 2 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

pred StabilizeFromPredecessor [s, s': NetState, t: Node] {
-- PRECONDITIONS 
   t in s.members
   t.(s.status) = Stabilizing
-- to ensure the following precondition, t must not change its successor
-- between the StabilizeFromSuccessor state transition that created the
-- Stabilizing status and now
   between [t, t.(s.saved), t.(s.succ).list[0]]
-- t queries its saved successor's predecessor to get its successor list,
-- if possible
-- POSTCONDITIONS
   s'.time = next [s.time]
   s'.members = s.members 
   s'.prdc = s.prdc
   let newSucc = t.(s.saved) |
   newSucc ! in s.members
   =>                                                -- predecessor is dead
         (  s'.succ = s.succ 
         && s'.status = (s.status -  (t -> Stabilizing)
                                  ++ (t.(s.succ).list[0] -> Rectifying)) 
         && s'.saved = (s.saved -  (t -> newSucc) 
                                ++ (t.(s.succ).list[0] -> t))          )
   else                                             -- predecessor is alive
         (  (some u: Succs | 
               u.list = insert [newSucc.(s.succ).list, 0, newSucc]
            && s'.succ = s.succ ++ (t -> u)                      )
         -- t incorporates the predecessor's successor list
         && s'.status = (s.status -  (t -> Stabilizing))
                                  ++ (newSucc -> Rectifying)
         && s'.saved = (s.saved - (t -> newSucc)) ++ (newSucc -> t) )
      -- this notification could override the successor's Stabilizing
      -- status, but that doesn't break anything or restrict the possible
      -- behaviors, so we can accept it as a modeling shortcut
}

pred StabilizeFromDeadPredecessor [s, s': NetState, t: Node] {
      StabilizeFromPredecessor [s, s', t] && t.(s.saved) ! in s.members }
run StabilizeFromDeadPredecessor for 6 but 
   2 Time, 2 NetState, 7 Succs, 1 Base, 3 seq                         -- OK

pred ActiveStabilizeFromPredecessor [s, s': NetState, t: Node] {
      StabilizeFromPredecessor [s, s', t] && t.(s.saved) in s.members }
run ActiveStabilizeFromPredecessor for 5 but 
   2 Time, 2 NetState, 6 Succs, 1 Base, 3 seq                         -- OK

assert StabilizeFromPredecessorPreservesInvariant {
   all s, s': NetState, t: Node |
      Invariant[s] && StabilizeFromPredecessor[s, s', t] => Invariant[s'] }
check StabilizeFromPredecessorPreservesInvariant for 9
   but 2 Time, 2 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

pred Rectify [s, s': NetState, r: Node] {
-- PRECONDITIONS 
   r in s.members
   r.(s.status) = Rectifying
-- if necessary, r queries its current predecessor to see if it is alive
-- POSTCONDITIONS
   s'.time = next [s.time]
   s'.members = s.members 
   s'.succ = s.succ 
   s'.status = (s.members - r) <: s.status  
   s'.saved = (s.members - r) <: s.saved 
   let newPrdc = r.(s.saved) |
   between [r.(s.prdc), newPrdc, r]
   =>                         -- adopt new predecessor without checking old
         s'.prdc = s.prdc ++ (r -> newPrdc)
   else                                            -- check old predecessor
         r.(s.prdc) in s.members
         =>   s'.prdc = s.prdc                                 -- no change
         else                        -- old predecessor dead, adopt new one
              s'.prdc = s.prdc ++ (r -> newPrdc)
}

pred ActiveRectify [s, s': NetState, r: Node] {
   Rectify [s, s', r] && s'.prdc != s.prdc }
run ActiveRectify for 6 but 2 Time, 2 NetState, 7 Succs, 1 Base, 3 seq-- OK

assert RectifyPreservesInvariant {
   all s, s': NetState, r: Node |
      Invariant[s] && Rectify[s, s', r] => Invariant[s'] }
check RectifyPreservesInvariant for 9
   but 2 Time, 2 NetState, 9 Succs, 1 Base, 3 seq                     -- OK

/* ========================================================================
EFFECT ON THE BASE OF PRINCIPALS
======================================================================== */

assert LossOfPrincipal { 
   all s, s': NetState |
      NextNetState [s, s'] && lt [# (s'.principals), # (s.principals)]
   => (some f: s.principals |
         Fail [s, s', f] && s'.principals = s.principals - f)        }
check LossOfPrincipal for 9
   but 2 Time, 2 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

/* ========================================================================
PROGRESS PROPERTIES
This analysis does not formalize the notification process in which,
whenever a node completes stabilization, it notifies its current successor,
which then rectifies.  It assumes that notification works correctly.  I
am grateful to Julien Brunel, David Chemouil, and Jeanne Tawa, who 
discovered notification errors in a previous version with their tool 
Electrum.
======================================================================== */

assert NonIdealImpliesChangeEnabled {
   all s: NetState |
      Invariant [s] && ! Ideal [s] && no s.status
   => (some m: Node |
         EffectiveStabilizeFromSuccessorIsEnabled [s, m]
      || EffectiveStabilizeFromPredecessorIsEnabled [s, m]
      || EffectiveRectifyFromSuccIsEnabled [s, m]
      || EffectiveRectifyFromPrdcIsEnabled [s, m]
      )                                                  }
check NonIdealImpliesChangeEnabled for 9
   but 1 Time, 1 NetState, 11 Succs, 1 Base, 3 seq                    -- OK

assert IdealImpliesNoChangeEnabled {
   all s: NetState |
      Invariant [s] && Ideal [s] && no s.status
   => !  (some m: Node |
            EffectiveStabilizeFromSuccessorIsEnabled [s, m]
         || EffectiveStabilizeFromPredecessorIsEnabled [s, m]
         || EffectiveRectifyFromSuccIsEnabled [s, m]
         || EffectiveRectifyFromPrdcIsEnabled [s, m]
         )                                                  }
check IdealImpliesNoChangeEnabled for 9
   but 1 Time, 1 NetState, 11 Succs, 1 Base, 3 seq                    -- OK

pred EffectiveStabilizeFromSuccessorIsEnabled [s: NetState, m: Node] {
   m in s.members 
   no m.(s.status)
   let succ1 = m.(s.succ).list[0] |
   (  succ1 ! in s.members
   || (succ1 in s.members
      && m.(s.succ).list != insert [succ1.(s.succ).list, 0, succ1]
   )  )
}
run EffectiveStabilizeFromSuccessorIsEnabled for 5
   but 1 Time, 1 NetState, 7 Succs, 1 Base, 3 seq                     -- OK

assert EffectiveStabilizeFromSuccChangesState {
   all s, s': NetState, m: Node |
      EffectiveStabilizeFromSuccessorIsEnabled [s, m]
   && StabilizeFromSuccessor [s, s', m] 
   => m.(s.succ) != m.(s'.succ)                     }
check EffectiveStabilizeFromSuccChangesState for 9
   but 2 Time, 2 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

pred EffectiveStabilizeFromPredecessorIsEnabled [s: NetState, m: Node] {
   m in s.members 
   no m.(s.status)
   let succ1 = m.(s.succ).list[0] |
      succ1 in s.members
   && between [m, succ1.(s.prdc), succ1]
   && succ1.(s.prdc) in s.members
}
run EffectiveStabilizeFromPredecessorIsEnabled for 5
   but 1 Time, 1 NetState, 7 Succs, 1 Base, 3 seq                     -- OK

assert EffectiveStabilizeFromPrdcChangesState {
   all s, s', s'': NetState, m: Node |
      EffectiveStabilizeFromPredecessorIsEnabled [s, m]
   && StabilizeFromSuccessor [s, s', m]
   && StabilizeFromPredecessor [s', s'', m]
   => m.(s.succ) != m.(s''.succ)                      }
check EffectiveStabilizeFromPrdcChangesState for 9
   but 3 Time, 3 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

pred EffectiveRectifyFromSuccIsEnabled [s: NetState, m: Node] {
   m in s.members 
   no m.(s.status)
   let succ1 = m.(s.succ).list[0] |
      succ1 in s.members
   && ! between [m, succ1.(s.prdc), succ1]
   && (between [succ1.(s.prdc), m, succ1] || succ1.(s.prdc) ! in s.members)
}
run EffectiveRectifyFromSuccIsEnabled for 5
   but 1 Time, 1 NetState, 7 Succs, 1 Base, 3 seq                     -- OK

assert EffectiveRectifyFromSuccChangesState {
   all s, s', s'': NetState, m: Node |
   let succ1 = m.(s.succ).list[0] |
      EffectiveRectifyFromSuccIsEnabled [s, m]
   && StabilizeFromSuccessor [s, s', m]
   && Rectify [s', s'', succ1]
   => succ1.(s.prdc) != succ1.(s''.prdc)     }
check EffectiveRectifyFromSuccChangesState for 9
   but 3 Time, 3 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

pred EffectiveRectifyFromPrdcIsEnabled [s: NetState, m: Node] {
   m in s.members 
   no m.(s.status)
   let succ1 = m.(s.succ).list[0] |
      succ1 in s.members
   && between [m, succ1.(s.prdc), succ1]
   && (   (succ1.(s.prdc) in s.members   -- succ1.(s.prdc) will be notified
          && between [(succ1.(s.prdc)).(s.prdc), m, succ1.(s.prdc)] )
      ||  (succ1.(s.prdc) in s.members   -- succ1.(s.prdc) will be notified
          && (succ1.(s.prdc)).(s.prdc) ! in s.members )
      ||  succ1.(s.prdc) ! in s.members           -- succ1 will be notified
      )
}
run EffectiveRectifyFromPrdcIsEnabled for 5
   but 1 Time, 1 NetState, 7 Succs, 1 Base, 3 seq                     -- OK

assert EffectiveRectifyFromPrdcChangesState {
   all s, s', s'', s''': NetState, m, r: Node |
      EffectiveRectifyFromPrdcIsEnabled [s, m]
   && StabilizeFromSuccessor [s, s', m]
   && StabilizeFromPredecessor [s', s'', m]
   && Rectify [s'', s''', r]
   => r.(s.prdc) != r.(s'''.prdc)             }
check EffectiveRectifyFromPrdcChangesState for 9
   but 3 Time, 3 NetState, 10 Succs, 1 Base, 3 seq                    -- OK

/* ========================================================================
Time, NetState (Time), Node, Succs (Node+Time), Base (1), seq (Base.size-1)
======================================================================== */
