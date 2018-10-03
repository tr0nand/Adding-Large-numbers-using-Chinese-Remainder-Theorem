function ans = main(num1,num2)
  primes = genprimes(max(num1,num2));
  residues = [];
  for i=1:length(primes)
    x = mod(num1,primes(i));
    y = mod(num2,primes(i));
    fprintf('%d residues -%d %d\n',primes(i),x,y)
    resi = x + y;
    resi = mod(resi,primes(i));
    residues(i) = resi;
    fprintf('%d\n',resi)
  end
  ans = crt(primes,residues);
end
