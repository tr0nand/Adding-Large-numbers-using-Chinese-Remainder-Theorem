% Calling function to plot the time taken by addUsingCRT function versus size of input
% Example: plotter()

function plotter()
  lower = 0;
  upper = 0;
  times = [];
  nums = [];
  for i=1:50
    lower = power(2, i-1);
    upper = power(2, i);
    nums = [nums i];
    start_time = now();
    for j=1:1000
      num1 = randi([lower, upper], 1);
      num2 = randi([lower, upper], 1);
      [sum, primes, resi_a, resi_b, resi_sum] = addUsingCRT(num1, num2);
    end
    end_time = now();
    time_taken = end_time-start_time;
    times = [times time_taken];
  end
  plot(nums, times);
  ylabel('Time(s)')
  xlabel('log(Number of digits in input numbers)')
  title('Plotted Graph')

end
