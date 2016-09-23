
function diag_lambda = qr_algorithm(A, toler)

mat = A;
err_val = 10;
while abs(err_val)>toler
  [q1, r1] = qr(mat);
  err_val = mat(1,1);
  mat = r1*q1;
  err_val = err_val - mat(1,1);
endwhile

diag_lambda = mat;

endfunction