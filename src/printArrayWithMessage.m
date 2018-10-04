% helper function to print all elements of an array along with a message
% Example: printArrayWithMessage([1, 2, 3], 'Hello world!')

function printArrayWithMessage(arr, message)
  fprintf('%s\n', message)
  for i=1:length(arr)
    fprintf('%d ', arr(i))
  end
  fprintf('\n\n')
end
