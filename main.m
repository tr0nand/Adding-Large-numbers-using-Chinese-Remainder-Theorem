function ans = main(num1,num2)
  primes = [2,3,5,7,11,13,17,19,29,31,37,41,43,47,53,59,61,67,71];
  residues = [];
  for i=1:size(primes)(2)
    x = mod(num1,primes(i));
    y = mod(num2,primes(i));
    resi = x + y;
    resi = mod(resi,primes(i));
    residues(i) = resi;
  end
  ans = crt(primes,residues);
end