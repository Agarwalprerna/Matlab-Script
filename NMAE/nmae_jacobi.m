clear all;
clc;
a = input('enter coef');
b = input('source vector');
maxerr=1e-5;
x = zeros(1,size(a,1));
n = size(a,1);
error = 1;
itr= 0;

while all(error>maxerr)
    xold = x;
    for i=1 : n
        sum =0;
        for j = 1:n
            if j~=i
                sum = sum + a(i,j)*xold(j);
            end
        end
        x(i) = (1/a(i,i))*(b(i)-sum);
    end
    itr = itr+1;
    y(itr ,: ) =x;
    error = abs(xold-x);
end
fprintf('convergency in %d iteration\n',itr);
disp(x)
