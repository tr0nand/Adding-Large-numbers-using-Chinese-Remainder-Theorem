%The purpose of this function is to generate the required primes to be utilized in the crt addition

function primes = genprimes(number)
  k = 2;
  primes = [2];
  fprintf('2 ');
  n = 3;
  while k <= number
    while isprime(n) == 0
      n = n+2;
    end
    fprintf('%d ',n);
    primes = [primes n];
    k = k * n;
    n = n + 2;
  end
  fprintf('\n');
end
