% calling function for adding two user input numbers using addUsingCRT function
% Example: main()

function main()
  num1 = input('\nEnter the first number to be added\n');
  fprintf('\n');
  num2 = input('Enter the second number to be added\n');
  fprintf('\n');
  [sum,primes,resi_a,resi_b,resi_sum] = addUsingCRT(num1,num2);
  printArrayWithMessage(primes, 'Primes used for addition are:')
  fprintf('Residues of %d are:\n', num1);
  for i=1:length(resi_a)
    fprintf('%d=%d(mod%d)\n',num1,resi_a(i),primes(i))
  end
  fprintf('\n');
  fprintf('Residues of %d are:\n', num2);
  for i=1:length(resi_b)
    fprintf('%d=%d(mod%d)\n',num2,resi_b(i),primes(i))
  end
  fprintf('\n');
  fprintf('Sum = %d\n', sum);
end
