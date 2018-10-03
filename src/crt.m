% Function to compute a number satisfying Chinese Remainder Theorem conditions
% Example: crt([2, 3, 5], [0, 2, 4])
  
function sol = crt(prime, residues)
  
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