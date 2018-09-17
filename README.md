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
### Addition of Large Numbers using CRT
Given two large number which cannot be stored in a word of memory, we can split the problem into smaller pieces and then solve them using Chinese Remainder Theorem.  
Steps:  
1. Suppose given numbers are $`x_1`$ and $`x_2`$.  
2. Choose two primes *p* and *q* such that p < (word-size), q < (word-size) and pq > (word size).  
3. Find $`a_1=/x_1 (mod p)`$, $`b_1=x_1 (mod q)`$ and $`a_2=x_2 (mod p)`$, $`b_2=x_2 (mod q)`$.  
4. Find $`a=(a_1+a_2) (mod p)`$ and $`b=(b_1+b_2) (mod q)`$.  
5. Form the equations $`X=a (mod p)`$ and $`X=b (mod q)`$.  
6. Solve equations using Chinese Remainder Theorem.

### Directory Structure
1.

### Scope for Additional Work
To further speed up the addition, r > 2 primes can be used.
