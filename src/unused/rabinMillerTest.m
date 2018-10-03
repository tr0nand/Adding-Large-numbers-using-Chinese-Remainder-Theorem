%Function to implement the Rabin Miller Algorithm
%This algorithm is used to check whether a number is prime
%This is part of the prime number generator
%works for n>6

function is_prime = rabinMillerTest(n)
  % if number is even definitely not prime
  if bitand(n,1) == 0
    is_prime = [0];
    return
  else
    s = 0;
    d = n-1;
    while(bitand(d,1)==0)
      s = s+1;
      d = bitshift(d,-1);
      for a=0:randi([2,n-1])
        x = powermod(a,d,n);
        if x~=1 && x+1 ~= n
          for r=1:s
            x = powermod(x,2,n);
            if x == 1 % composite for sure
              is_prime = [0];
              return;
            elseif x == n-1
              a = 0;
              break
            end
          end
          % composite if we reached end of this loop
          if a > 0
            if_prime = [0];
            return;
          end
        end
      end
    end
    % probably prime if reached end of outer loop
    is_prime = [1];
    return
  end
end
