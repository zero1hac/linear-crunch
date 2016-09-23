%
% Function to check if a matrix is tridiagonalized or not
%

function check_bit = check_tridiag(A)

for i = 1:size(A)(1)
  for j = 1:size(A)(2)
    if ( abs(i-j) > 1)
      if (abs(A(i,j) - 0.0) > 0.00001)
        check_bit = false;
        return;
      endif
    endif
  endfor
endfor
check_bit = true;
endfunction
      