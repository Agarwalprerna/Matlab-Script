clear all;
clc;

% suppose cubic equation x^3 -x^2 -x +1 =0 
% find its roots
A = [1 -1 -1 1];     %coefficient matrix of cubic equation
roots(A)
                OR 

syms x
solve(x^3 -x^2 -x +1 ==0 )

%% QUADRATIC EQN   
eq = 3*x^2 -4*x + 7 ==0;
A = [3 -4 7];
roots(A)
x1 = abs(roots(A))  %magnitude of roots

%% by NEWTON RAPHSON METHOD 

