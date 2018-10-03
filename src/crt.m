function sol = crt(prime, residues)
  % function to compute a number satisfying CRT conditions
  % call using crt(list of primes, list of residues)

  p_prod = prod(prime); % product of all primes

  sol = 0;

  % loop to go over each residue, and solve using crt
  for i=1:length(prime)
    temp_p = p_prod/prime(i);
    [gcd,x_euc,y_euc] = euclid(prime(i),mod(temp_p,prime(i)));
    x_euc = mod(x_euc,prime(i));
    sol = sol + residues(i)*y_euc*temp_p;
    sol = mod(sol,p_prod);
  end
  if sol ==0
    sol = p_prod;
  end
end
