clear all;
clc;
x = input('enter value of x where  to find: ');
xo = input('enter initial value of x: ');
yo = input('enter initial value of y: ');
h = input('enter intervals: ');
n = (x-xo)/h;
f = @(x,y) (-2*x^3 +x -y);
% x(1) = xo;
% y(1) = yo;
% for i = 1: n
%     x(i+1) = xo + i*h;
%     y(i+1) = y(i) + h*f(x(i), y(i));
%     fprintf('y(%f) = %f\n',x(i+1),y(i+1));
% end


%% modified euler
x(1) = xo;
y(1) = yo;
for i =1:n
    x(i+1) = xo + i*h;
    yp(i+1) = y(i) + h*(f(x(i), y(i)));
    y(i+1) = y(i) + 0.5*h*(f(x(i), y(i)) + f(x(i) + h , yp(i+1)));
    fprintf('y(%f) = %f\n',x(i+1),y(i+1));
end


 