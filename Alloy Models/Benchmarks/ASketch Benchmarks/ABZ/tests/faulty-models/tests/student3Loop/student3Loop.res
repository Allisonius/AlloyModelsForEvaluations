Generating test suite for sketching: faulty-models/student3Loop
------------------------------------------------------
Test Suite Generation Details:
Size of Test Suite: 7
Execution Time: 655 ms (includes test case generation and iterative SUBF sketching)
Total candidates for this sketch: 43264
------------------------------------------------------
6 solutions found as equivalent and valid:
---
(no n: Node | n = (List.header))
||
(one n:Node | n.link = n)
***
(no n: Node | n = (List.header))
||
(one n:Node | n.link = (n+(n.link)))
***
(no n: Node | n = (List.header))
||
(one n:Node | n.link = (n.(*link)))
***
(no n: Node | n = (This.header))
||
(one n:Node | n.link = n)
***
(no n: Node | n = (This.header))
||
(one n:Node | n.link = (n+(n.link)))
***
(no n: Node | n = (This.header))
||
(one n:Node | n.link = (n.(*link)))
***

