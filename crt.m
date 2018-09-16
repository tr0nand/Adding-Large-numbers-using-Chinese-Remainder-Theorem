function sol = crt(primes, residues)
  [gcd,x_euc,y_euc] = euclid(primes(1), primes(2));
  if gcd != 1
    fprintf("ERROR!\nInputs are not co-prime.\n");
    sol = -1;
    return
  endif
  sol = primes(1)*x_euc*residues(2) + primes(2)*y_euc*residues(1);
endfunction