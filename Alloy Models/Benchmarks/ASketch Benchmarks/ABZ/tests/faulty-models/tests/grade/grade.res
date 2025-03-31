Generating test suite for sketching: faulty-models/grade
------------------------------------------------------
Test Suite Generation Details:
Size of Test Suite: 7
Execution Time: 562 ms (includes test case generation and iterative SUBF sketching)
Total candidates for this sketch: 3136
------------------------------------------------------
3 solutions found as equivalent and valid:
---
s in a.associated_with.assistant_for || s in a.associated_with.instructor_of
s !in (a.assigned_to)
***
s in a.associated_with.assistant_for || s in a.associated_with.instructor_of
(a.assigned_to) in (Person-s)
***
s in a.associated_with.assistant_for || s in a.associated_with.instructor_of
(a.assigned_to) in (Student-s)
***

