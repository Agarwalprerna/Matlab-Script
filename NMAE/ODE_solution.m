clear all ;
clc;

%first order ODE
% f = @(x,y) (-2*x^2 + x -y);
% [x , y] =ode45(f , [0 4] , 2);
% plot(x,y);
% xlabel('x')
% ylabel('y')

f = @(x,y)(-2*x^3 +x -y);
[x,y] =ode45(f ,[0 3], 1);
plot(x,y);
title('ode45 to solve 1st order differential equation')
