function sol = crt(prime, residues)
  [gcd,x_euc,y_euc] = euclid(prime(1), prime(2));
  if gcd ~= 1
    fprintf('ERROR!\nInputs are not co-prime.\n');
    sol = -1;
    return
  end
  sol = prime(1)*x_euc*residues(2) + prime(2)*y_euc*residues(1);
end
