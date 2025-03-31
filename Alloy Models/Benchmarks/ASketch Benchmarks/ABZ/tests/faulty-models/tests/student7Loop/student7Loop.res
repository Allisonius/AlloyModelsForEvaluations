Generating test suite for sketching: faulty-models/student7Loop
------------------------------------------------------
Test Suite Generation Details:
Size of Test Suite: 7
Execution Time: 1677 ms (includes test case generation and iterative SUBF sketching)
Total candidates for this sketch: 33280
------------------------------------------------------
226 solutions found as equivalent and valid:
---
#header in 0
||
some n: Node | n in (n.link)
***
#header in 0
||
some n: Node | n in ((Node-n)+(n.link))
***
#header in 0
||
some n: Node | n in ((n.link)-(Node-n))
***
#header in 0
||
some n: Node | n in ((n.link).(n->Node))
***
#header in 0
||
some n: Node | n in ((n.link).(n->n))
***
#header in 0
||
some n: Node | n in (n&(n.link))
***
#header in 0
||
some n: Node | n in (n.(~link))
***
#header in 0
||
some n: Node | n = (n.link)
***
#header in 0
||
some n: Node | n = ((n.link)-(Node-n))
***
#header in 0
||
some n: Node | n = ((n.link).(n->n))
***
#header in 0
||
some n: Node | n = (n&(n.link))
***
#header in 0
||
some n: Node | n = (n.(^link))
***
#header in 0
||
some n: Node | n !in (Node-(n.link))
***
#header in 0
||
one n: Node | n in (n.link)
***
#header in 0
||
one n: Node | n in ((Node-n)+(n.link))
***
#header in 0
||
one n: Node | n in ((n.link)-(Node-n))
***
#header in 0
||
one n: Node | n in ((n.link).(n->Node))
***
#header in 0
||
one n: Node | n in ((n.link).(n->n))
***
#header in 0
||
one n: Node | n in ((n.link).link)
***
#header in 0
||
one n: Node | n in (n&(n.link))
***
#header in 0
||
one n: Node | n in (n.(^link))
***
#header in 0
||
one n: Node | n in (n.(~link))
***
#header in 0
||
one n: Node | n = (n.link)
***
#header in 0
||
one n: Node | n = ((n.link)-(Node-n))
***
#header in 0
||
one n: Node | n = ((n.link).(n->n))
***
#header in 0
||
one n: Node | n = ((n.link).link)
***
#header in 0
||
one n: Node | n = (n&(n.link))
***
#header in 0
||
one n: Node | n = (n.(^link))
***
#header in 0
||
one n: Node | n !in (Node-(n.link))
***
#header in 0
<=>
all n: Node | n in (Node-(n.link))
***
#header in 0
<=>
all n: Node | n != (n.link)
***
#header in 0
<=>
all n: Node | n != ((n.link)-(Node-n))
***
#header in 0
<=>
all n: Node | n != ((n.link).(n->n))
***
#header in 0
<=>
all n: Node | n != (n&(n.link))
***
#header in 0
<=>
all n: Node | n != (n.(^link))
***
#header in 0
<=>
all n: Node | n !in (n.link)
***
#header in 0
<=>
all n: Node | n !in ((Node-n)+(n.link))
***
#header in 0
<=>
all n: Node | n !in ((n.link)-(Node-n))
***
#header in 0
<=>
all n: Node | n !in ((n.link).(n->Node))
***
#header in 0
<=>
all n: Node | n !in ((n.link).(n->n))
***
#header in 0
<=>
all n: Node | n !in (n&(n.link))
***
#header in 0
<=>
all n: Node | n !in (n.(~link))
***
#header in 0
<=>
no n: Node | n in (n.link)
***
#header in 0
<=>
no n: Node | n in ((Node-n)+(n.link))
***
#header in 0
<=>
no n: Node | n in ((n.link)-(Node-n))
***
#header in 0
<=>
no n: Node | n in ((n.link).(n->Node))
***
#header in 0
<=>
no n: Node | n in ((n.link).(n->n))
***
#header in 0
<=>
no n: Node | n in (n&(n.link))
***
#header in 0
<=>
no n: Node | n in (n.(~link))
***
#header in 0
<=>
no n: Node | n = (n.link)
***
#header in 0
<=>
no n: Node | n = ((n.link)-(Node-n))
***
#header in 0
<=>
no n: Node | n = ((n.link).(n->n))
***
#header in 0
<=>
no n: Node | n = (n&(n.link))
***
#header in 0
<=>
no n: Node | n = (n.(^link))
***
#header in 0
<=>
no n: Node | n !in (Node-(n.link))
***
#header = 0
||
some n: Node | n in (n.link)
***
#header = 0
||
some n: Node | n in ((Node-n)+(n.link))
***
#header = 0
||
some n: Node | n in ((n.link)-(Node-n))
***
#header = 0
||
some n: Node | n in ((n.link).(n->Node))
***
#header = 0
||
some n: Node | n in ((n.link).(n->n))
***
#header = 0
||
some n: Node | n in (n&(n.link))
***
#header = 0
||
some n: Node | n in (n.(~link))
***
#header = 0
||
some n: Node | n = (n.link)
***
#header = 0
||
some n: Node | n = ((n.link)-(Node-n))
***
#header = 0
||
some n: Node | n = ((n.link).(n->n))
***
#header = 0
||
some n: Node | n = (n&(n.link))
***
#header = 0
||
some n: Node | n = (n.(^link))
***
#header = 0
||
some n: Node | n !in (Node-(n.link))
***
#header = 0
||
one n: Node | n in (n.link)
***
#header = 0
||
one n: Node | n in ((Node-n)+(n.link))
***
#header = 0
||
one n: Node | n in ((n.link)-(Node-n))
***
#header = 0
||
one n: Node | n in ((n.link).(n->Node))
***
#header = 0
||
one n: Node | n in ((n.link).(n->n))
***
#header = 0
||
one n: Node | n in ((n.link).link)
***
#header = 0
||
one n: Node | n in (n&(n.link))
***
#header = 0
||
one n: Node | n in (n.(^link))
***
#header = 0
||
one n: Node | n in (n.(~link))
***
#header = 0
||
one n: Node | n = (n.link)
***
#header = 0
||
one n: Node | n = ((n.link)-(Node-n))
***
#header = 0
||
one n: Node | n = ((n.link).(n->n))
***
#header = 0
||
one n: Node | n = ((n.link).link)
***
#header = 0
||
one n: Node | n = (n&(n.link))
***
#header = 0
||
one n: Node | n = (n.(^link))
***
#header = 0
||
one n: Node | n !in (Node-(n.link))
***
#header = 0
<=>
all n: Node | n in (Node-(n.link))
***
#header = 0
<=>
all n: Node | n != (n.link)
***
#header = 0
<=>
all n: Node | n != ((n.link)-(Node-n))
***
#header = 0
<=>
all n: Node | n != ((n.link).(n->n))
***
#header = 0
<=>
all n: Node | n != (n&(n.link))
***
#header = 0
<=>
all n: Node | n != (n.(^link))
***
#header = 0
<=>
all n: Node | n !in (n.link)
***
#header = 0
<=>
all n: Node | n !in ((Node-n)+(n.link))
***
#header = 0
<=>
all n: Node | n !in ((n.link)-(Node-n))
***
#header = 0
<=>
all n: Node | n !in ((n.link).(n->Node))
***
#header = 0
<=>
all n: Node | n !in ((n.link).(n->n))
***
#header = 0
<=>
all n: Node | n !in (n&(n.link))
***
#header = 0
<=>
all n: Node | n !in (n.(~link))
***
#header = 0
<=>
no n: Node | n in (n.link)
***
#header = 0
<=>
no n: Node | n in ((Node-n)+(n.link))
***
#header = 0
<=>
no n: Node | n in ((n.link)-(Node-n))
***
#header = 0
<=>
no n: Node | n in ((n.link).(n->Node))
***
#header = 0
<=>
no n: Node | n in ((n.link).(n->n))
***
#header = 0
<=>
no n: Node | n in (n&(n.link))
***
#header = 0
<=>
no n: Node | n in (n.(~link))
***
#header = 0
<=>
no n: Node | n = (n.link)
***
#header = 0
<=>
no n: Node | n = ((n.link)-(Node-n))
***
#header = 0
<=>
no n: Node | n = ((n.link).(n->n))
***
#header = 0
<=>
no n: Node | n = (n&(n.link))
***
#header = 0
<=>
no n: Node | n = (n.(^link))
***
#header = 0
<=>
no n: Node | n !in (Node-(n.link))
***
#header != 0
<=>
some n: Node | n in (n.link)
***
#header != 0
<=>
some n: Node | n in ((Node-n)+(n.link))
***
#header != 0
<=>
some n: Node | n in ((n.link)-(Node-n))
***
#header != 0
<=>
some n: Node | n in ((n.link).(n->Node))
***
#header != 0
<=>
some n: Node | n in ((n.link).(n->n))
***
#header != 0
<=>
some n: Node | n in (n&(n.link))
***
#header != 0
<=>
some n: Node | n in (n.(~link))
***
#header != 0
<=>
some n: Node | n = (n.link)
***
#header != 0
<=>
some n: Node | n = ((n.link)-(Node-n))
***
#header != 0
<=>
some n: Node | n = ((n.link).(n->n))
***
#header != 0
<=>
some n: Node | n = (n&(n.link))
***
#header != 0
<=>
some n: Node | n = (n.(^link))
***
#header != 0
<=>
some n: Node | n !in (Node-(n.link))
***
#header != 0
<=>
one n: Node | n in (n.link)
***
#header != 0
<=>
one n: Node | n in ((Node-n)+(n.link))
***
#header != 0
<=>
one n: Node | n in ((n.link)-(Node-n))
***
#header != 0
<=>
one n: Node | n in ((n.link).(n->Node))
***
#header != 0
<=>
one n: Node | n in ((n.link).(n->n))
***
#header != 0
<=>
one n: Node | n in ((n.link).link)
***
#header != 0
<=>
one n: Node | n in (n&(n.link))
***
#header != 0
<=>
one n: Node | n in (n.(^link))
***
#header != 0
<=>
one n: Node | n in (n.(~link))
***
#header != 0
<=>
one n: Node | n = (n.link)
***
#header != 0
<=>
one n: Node | n = ((n.link)-(Node-n))
***
#header != 0
<=>
one n: Node | n = ((n.link).(n->n))
***
#header != 0
<=>
one n: Node | n = ((n.link).link)
***
#header != 0
<=>
one n: Node | n = (n&(n.link))
***
#header != 0
<=>
one n: Node | n = (n.(^link))
***
#header != 0
<=>
one n: Node | n !in (Node-(n.link))
***
#header != 0
=>
some n: Node | n in (n.link)
***
#header != 0
=>
some n: Node | n in ((Node-n)+(n.link))
***
#header != 0
=>
some n: Node | n in ((n.link)-(Node-n))
***
#header != 0
=>
some n: Node | n in ((n.link).(n->Node))
***
#header != 0
=>
some n: Node | n in ((n.link).(n->n))
***
#header != 0
=>
some n: Node | n in (n&(n.link))
***
#header != 0
=>
some n: Node | n in (n.(~link))
***
#header != 0
=>
some n: Node | n = (n.link)
***
#header != 0
=>
some n: Node | n = ((n.link)-(Node-n))
***
#header != 0
=>
some n: Node | n = ((n.link).(n->n))
***
#header != 0
=>
some n: Node | n = (n&(n.link))
***
#header != 0
=>
some n: Node | n = (n.(^link))
***
#header != 0
=>
some n: Node | n !in (Node-(n.link))
***
#header != 0
=>
one n: Node | n in (n.link)
***
#header != 0
=>
one n: Node | n in ((Node-n)+(n.link))
***
#header != 0
=>
one n: Node | n in ((n.link)-(Node-n))
***
#header != 0
=>
one n: Node | n in ((n.link).(n->Node))
***
#header != 0
=>
one n: Node | n in ((n.link).(n->n))
***
#header != 0
=>
one n: Node | n in ((n.link).link)
***
#header != 0
=>
one n: Node | n in (n&(n.link))
***
#header != 0
=>
one n: Node | n in (n.(^link))
***
#header != 0
=>
one n: Node | n in (n.(~link))
***
#header != 0
=>
one n: Node | n = (n.link)
***
#header != 0
=>
one n: Node | n = ((n.link)-(Node-n))
***
#header != 0
=>
one n: Node | n = ((n.link).(n->n))
***
#header != 0
=>
one n: Node | n = ((n.link).link)
***
#header != 0
=>
one n: Node | n = (n&(n.link))
***
#header != 0
=>
one n: Node | n = (n.(^link))
***
#header != 0
=>
one n: Node | n !in (Node-(n.link))
***
#header !in 0
<=>
some n: Node | n in (n.link)
***
#header !in 0
<=>
some n: Node | n in ((Node-n)+(n.link))
***
#header !in 0
<=>
some n: Node | n in ((n.link)-(Node-n))
***
#header !in 0
<=>
some n: Node | n in ((n.link).(n->Node))
***
#header !in 0
<=>
some n: Node | n in ((n.link).(n->n))
***
#header !in 0
<=>
some n: Node | n in (n&(n.link))
***
#header !in 0
<=>
some n: Node | n in (n.(~link))
***
#header !in 0
<=>
some n: Node | n = (n.link)
***
#header !in 0
<=>
some n: Node | n = ((n.link)-(Node-n))
***
#header !in 0
<=>
some n: Node | n = ((n.link).(n->n))
***
#header !in 0
<=>
some n: Node | n = (n&(n.link))
***
#header !in 0
<=>
some n: Node | n = (n.(^link))
***
#header !in 0
<=>
some n: Node | n !in (Node-(n.link))
***
#header !in 0
<=>
one n: Node | n in (n.link)
***
#header !in 0
<=>
one n: Node | n in ((Node-n)+(n.link))
***
#header !in 0
<=>
one n: Node | n in ((n.link)-(Node-n))
***
#header !in 0
<=>
one n: Node | n in ((n.link).(n->Node))
***
#header !in 0
<=>
one n: Node | n in ((n.link).(n->n))
***
#header !in 0
<=>
one n: Node | n in ((n.link).link)
***
#header !in 0
<=>
one n: Node | n in (n&(n.link))
***
#header !in 0
<=>
one n: Node | n in (n.(^link))
***
#header !in 0
<=>
one n: Node | n in (n.(~link))
***
#header !in 0
<=>
one n: Node | n = (n.link)
***
#header !in 0
<=>
one n: Node | n = ((n.link)-(Node-n))
***
#header !in 0
<=>
one n: Node | n = ((n.link).(n->n))
***
#header !in 0
<=>
one n: Node | n = ((n.link).link)
***
#header !in 0
<=>
one n: Node | n = (n&(n.link))
***
#header !in 0
<=>
one n: Node | n = (n.(^link))
***
#header !in 0
<=>
one n: Node | n !in (Node-(n.link))
***
#header !in 0
=>
some n: Node | n in (n.link)
***
#header !in 0
=>
some n: Node | n in ((Node-n)+(n.link))
***
#header !in 0
=>
some n: Node | n in ((n.link)-(Node-n))
***
#header !in 0
=>
some n: Node | n in ((n.link).(n->Node))
***
#header !in 0
=>
some n: Node | n in ((n.link).(n->n))
***
#header !in 0
=>
some n: Node | n in (n&(n.link))
***
#header !in 0
=>
some n: Node | n in (n.(~link))
***
#header !in 0
=>
some n: Node | n = (n.link)
***
#header !in 0
=>
some n: Node | n = ((n.link)-(Node-n))
***
#header !in 0
=>
some n: Node | n = ((n.link).(n->n))
***
#header !in 0
=>
some n: Node | n = (n&(n.link))
***
#header !in 0
=>
some n: Node | n = (n.(^link))
***
#header !in 0
=>
some n: Node | n !in (Node-(n.link))
***
#header !in 0
=>
one n: Node | n in (n.link)
***
#header !in 0
=>
one n: Node | n in ((Node-n)+(n.link))
***
#header !in 0
=>
one n: Node | n in ((n.link)-(Node-n))
***
#header !in 0
=>
one n: Node | n in ((n.link).(n->Node))
***
#header !in 0
=>
one n: Node | n in ((n.link).(n->n))
***
#header !in 0
=>
one n: Node | n in ((n.link).link)
***
#header !in 0
=>
one n: Node | n in (n&(n.link))
***
#header !in 0
=>
one n: Node | n in (n.(^link))
***
#header !in 0
=>
one n: Node | n in (n.(~link))
***
#header !in 0
=>
one n: Node | n = (n.link)
***
#header !in 0
=>
one n: Node | n = ((n.link)-(Node-n))
***
#header !in 0
=>
one n: Node | n = ((n.link).(n->n))
***
#header !in 0
=>
one n: Node | n = ((n.link).link)
***
#header !in 0
=>
one n: Node | n = (n&(n.link))
***
#header !in 0
=>
one n: Node | n = (n.(^link))
***
#header !in 0
=>
one n: Node | n !in (Node-(n.link))
***

