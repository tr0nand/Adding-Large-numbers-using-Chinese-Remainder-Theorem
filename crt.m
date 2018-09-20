function sol = crt(prime, residues)
  p_prod = prod(prime)
  sol = 0;
  for i=1:size(prime)(2)
    temp_p = p_prod/prime(i);
    [gcd,x_euc,y_euc] = euclid(prime(i),temp_p);
    x_euc = mod(x_euc,prime(i));
    sol = sol + residues(i)*y_euc*temp_p;
    sol = mod(sol,p_prod);
  end
  return
end