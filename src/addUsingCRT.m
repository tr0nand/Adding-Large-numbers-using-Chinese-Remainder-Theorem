% function to add two large numbers using Chinese Remainder Theorem
% Example: addUsingCRT(123, 146)

function [sum, primes, resi_a, resi_b, resi_sum]  = addUsingCRT(num1, num2)
  max_num = max(num1,num2);
  primes = genPrimes(2*max_num);
  resi_a = [];
  resi_b = [];
  resi_sum = [];
  
  for i=1:length(primes)
    a = mod(num1,primes(i));
    resi_a = [resi_a a];
    b = mod(num2,primes(i));
    resi_b = [resi_b b];
    resi = a + b;
    resi = mod(resi,primes(i));
    resi_sum = [resi_sum resi];
  end
  sum = crt(primes,resi_sum);
end
