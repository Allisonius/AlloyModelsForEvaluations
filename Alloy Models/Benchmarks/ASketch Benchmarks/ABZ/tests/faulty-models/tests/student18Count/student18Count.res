Generating test suite for sketching: faulty-models/student18Count
------------------------------------------------------
Test Suite Generation Details:
Size of Test Suite: 1
Execution Time: 46 ms (includes test case generation and iterative SUBF sketching)
Total candidates for this sketch: 4
------------------------------------------------------
3 solutions found as equivalent and valid:
---
RepOk[This]
result = #{n: Node | n in This.header.*link && n.elem = x}
***
RepOk[This]
result = #{n: Node | n in This.header.*link <=> n.elem = x}
***
RepOk[This]
result = #{n: Node | n in This.header.*link => n.elem = x}
***

