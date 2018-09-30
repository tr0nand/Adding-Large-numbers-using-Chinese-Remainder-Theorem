%Function to calculate the modular inverse of two relatively prime numbers

function res = modinv(a,b)
  [d,x,y] = euclid(a,b);
  res = x;
  if res < 0
    res = res + b;
  end
end
