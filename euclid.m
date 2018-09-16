%Function to implement Euclids Extended Algorithm

function [d,x,y] = euclid(p,q)

%Checking Base case
if q==0
  d = p;
  x = 1;
  y = 0;

else
  r = mod(p,q);

  %Recursively calling the function
  [d_rec,x_rec,y_rec]=euclid(q,r);

  %Using the recursive solutions
  d=d_rec;
  x = y_rec;
  y = x_rec-floor(p/q)*y_rec;
end

%Returning the values to calling function
end
