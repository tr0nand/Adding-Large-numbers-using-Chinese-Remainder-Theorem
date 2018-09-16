## Adding Two Large Numbers using Chinese Remainder Theorem

### Problem Statement :**  
Write a MATLAB code to add large integers exceeding the word size of the computer using the Chinese remainder theorem.

### Members:  
Tarun Anand - 16CO147
Archit Pandey - 16CO153

### Tools used:  
Matlab

### The Chinese Remainder Theorem

[Reference](https://crypto.stanford.edu/pbc/notes/numbertheory/crt.html)



Suppose we wish to solve the equations:  
	>      X = a (mod p)  
	>      X = b (mod q)


Where p and q are co-prime  
The Chinese Remainder Theorem states that the value of x is unique mod pq.

### Addition of Large Numbers
Given two large number which cannot be stored in a word of memory, we can split the problem into smaller pieces and then solve them using Chinese Remainder Theorem.  
Steps:  
-   Suppose given numbers are x1 and x2.  
-   Choose two primes p and q such that p < (word-size), q < (word size) and pq > (word size).  
-   Find a1 = x1 (mod p), b1 = x1 (mod q) and a2 = x2 (mod p), b2 = x2 (mod q).  
-   Find a = (a1 + a2) (mod p) and b = (b1 + b2) (mod q).  
-   Form the equations X = a (mod p) and X = b(mod q).  
-   Solve equations using Chinese Remainder Theorem.

### Scope for Additional Work
To further speed up the addition, r > 2 primes can be used.