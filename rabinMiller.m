%Function to implement the Rabin Miller Algorithm
%This algorithm is used to check whether a number is prime
%This is part of the prime number generator

function res = rabinMiller(n)

s = n-1;
t=0;
while s&1 ==0
  s = s/2;
  t = t+1;
end
k = 0;
while k < 128
  a = randi([2,n-1]);
  v = mod(a^s,n);
  if v ~=1
    i = 0;
      while v ~= n-1
        if i == t-1
          res = 0;
          return
        else
          i = i + 1;
          v = mod(v^2,n);
        end
      end
    end
  k=k+2;
  res = 1;
  return
end
end
