%
% Algorithm to find Triadiagonal matrix using householder transformation
%
%

function td_matrix = t_diagonal(A)
  k = 1;
  iter=0;
  while k<size(A)(1)
    sum_alpha = 0;
    sum_alpha = norm(A(k+1:size(A)(1),k));
    alpha = -1.0*sign(A(k+1,k))*sum_alpha;
    r = (0.5*(alpha)^2 - 0.5*alpha*A(k+1,k))^0.5;
    w = zeros(size(A)(1), 1);
    w(k+1) = (A(k+1,k) - alpha)/(2*r);
    for i = k+2:size(A)(1)
      w(i) = (A(i,k))/(2*r);
    endfor
    P = eye(size(A)) - 2*w*w';
    A = P*A*P;
    iter+=1;
    if (check_tridiag(A))
      td_matrix = A;
      iter
      return;
    else
      k = k+1;
    endif
  endwhile
  
endfunction