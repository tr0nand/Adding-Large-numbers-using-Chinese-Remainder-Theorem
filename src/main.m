function ans = main()
  fprintf('This matlab code helps in the addition of large numbers using Chinese Remainder Theorem\n');
  num1 = input('Enter the first number to be added\n');
  fprintf('\n');
  num2 = input('Enter the second number to be added\n');
  fprintf('\n');
  fprintf('The primes to be utilized in the calculation are\n');
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
