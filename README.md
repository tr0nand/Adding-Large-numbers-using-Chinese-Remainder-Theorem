## Adding Two Large Numbers using Chinese Remainder Theorem

### Problem Statement
Write a MATLAB code to add large integers exceeding the word size of the computer using the Chinese remainder theorem.

### Members
Tarun Anand - 16CO147
Archit Pandey - 16CO153

### Tools used
1. Matlab

### The Chinese Remainder Theorem
[Reference](https://crypto.stanford.edu/pbc/notes/numbertheory/crt.html)

Suppose we wish to solve the equations:  
```math
	x=a(modp) ... (i)
	x=b(modq) ... (ii)
```
where p and q are co-prime.
The Chinese Remainder Theorem states that there exists a unique solution for x (mod pq).

Let $`p_1=p^{−1}(modq)`$ and $`q_1=q^{−1}(modp)`$. These must exist since *p*,*q* are coprime. Then if *y* is an integer such that $`y=aqq_1+bpp_1 (modpq)`$ then *y* satisfies both equations (i) and (ii).

To find y, using Euclid's Extended Algorithm:
1. Find m and n such that $`pm+qn=1`$.
2. y is given by $`y=pmb+qna`$

### Euclid's Extended Algorithm:

For any 2 integers *a* and *b* Euclid's Extended Algorithm helps us find 2 integers *x* and *y* such that  
```math
	ax + by = gcd(a,b)
```
The following steps help us determine *x* and *y*  
```math
	if b = 0
		then the gcd(a,b) = a and x=1,y=0
	else
		r = a mod b
		Recursively use the algorithm to obtain x' and y' where bx' + ry' = gcd(b,r)
		x = y'
		y = x' - floor(a,b)*y'
		gcd(a,b) = gcd(b,r)

```
The calculated values *x* and *y* are utilized in the Chinese Remainder Theorem.
### Garner's Algorithm - An extension of the Chinese Remainder Theorem
Since the size of the word is too large to fit the memory, we are using an algorithm known as Garner's algorithm which will help us in this task.
Garner's algorithm is an extension of the Chinese Remainder Theorem which is specifically utlized for large numbers.  

A large number a can be written in the form
```math
a = x1 + x2*p1 + x3*p1*p2 + .... xk*p1*p2...*pk-1

```
where
```math
	p1,p2...,pk are all relatively prime


```
and
```math
a = x1(mod p1)
a = x2(mod p2)
a = x3(mod p3)
....
a = xk(mod pk)
```
[Reference](https://hal.inria.fr/hal-01551339/document)

### Directory Structure
1. main.m - main function
2. crt.m - module containing code for Chinese Remainder Theorem
3. euclid.m - module containing code for Extended Euclid's Algorithm
4. garner.m - module containing code for Garner's Algorithm

### Scope for Additional Work
To further speed up the addition, r > 2 primes can be used.
