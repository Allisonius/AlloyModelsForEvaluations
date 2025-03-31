Generating test suite for sketching: faulty-models/student12Sorted
------------------------------------------------------
Test Suite Generation Details:
Size of Test Suite: 9
Execution Time: 706 ms (includes test case generation and iterative SUBF sketching)
Total candidates for this sketch: 33856
------------------------------------------------------
10 solutions found as equivalent and valid:
---
all n: This.header.*link | no (n.link) || n.elem <= ((n.link).elem)
***
all n: This.header.*link | no ((n.link).elem) || n.elem <= ((n.link).elem)
***
all n: This.header.*link | no (n.(^link)) || n.elem <= ((n.link).elem)
***
all n: This.header.*link | lone (n.(*link)) || n.elem <= ((n.link).elem)
***
all n: This.header.*link | some (n.link) => n.elem <= ((n.link).elem)
***
all n: This.header.*link | some ((n.link).elem) => n.elem <= ((n.link).elem)
***
all n: This.header.*link | some (n.(^link)) => n.elem <= ((n.link).elem)
***
all n: This.header.*link | one (n.link) => n.elem <= ((n.link).elem)
***
all n: This.header.*link | one ((n.link).elem) => n.elem <= ((n.link).elem)
***
all n: This.header.*link | one (n.(*link)) || n.elem <= ((n.link).elem)
***

