Generating test suite for sketching: faulty-models/student0Sorted
------------------------------------------------------
Test Suite Generation Details:
Size of Test Suite: 3
Execution Time: 171 ms (includes test case generation and iterative SUBF sketching)
Total candidates for this sketch: 224
------------------------------------------------------
3 solutions found as equivalent and valid:
---
all n: This.header.*link | no (n.link) || n.elem <= n.link.elem
***
all n: This.header.*link | some (n.link) => n.elem <= n.link.elem
***
all n: This.header.*link | one (n.link) => n.elem <= n.link.elem
***

