%
% Power method to calculate the most dominant eigen value of the given matrix mat
%

function [v, eigen_value] = powerM(init, mat, toler)
x0 = init;
d = 0;
iter = 0;
temp = 5;
while abs(d - temp) > toler
	x0 = mat*x0;
	temp = d;
  iter +=1;
	d = norm(x0, Inf);
	x0 = x0./d;
end
iter
disp(d);
x0
v = x0;
eigen_value = d

