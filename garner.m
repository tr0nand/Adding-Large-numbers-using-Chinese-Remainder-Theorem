%This file contains all the code to implement the Garner Algorithm


function sum = garner(number)
  primes = [];
  % The list of all primes to be utilized in the algorithm

  for i = 2:100
    if isprime(i) == 1
      primes = [primes i];
    end
  end
  [m,n] = size(primes);
  x = zeros(n,1);
  for i = 1:n
    x(i) = mod(number,primes(i));
    for j =1:i-1
      x(i) = modinv(primes(j),primes(i))*(x(i) - x(j));
      x(i) = mod(x(i),primes(i));
      if x(i) < 0
        x(i) = x(i) + primes(i)
      end
    end
  end
  sum = x(1);
  for i = 2:n
    inc = 1;
    for j = 1:i-1
      inc = inc * primes(j);
    end
    sum = sum + x(i)*inc;
  end

end
