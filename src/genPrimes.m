% Function to generate primes such that product of all primes is just greater than the given number
% Example: genPrimes(123)

function primes = genPrimes(number)
  k = 2;
  primes = [2];
  n = 3;
  while k <= number
    while isprime(n) == 0
      n = n+2;
    end
    primes = [primes n];
    k = k * n;
    n = n + 2;
  end
end
