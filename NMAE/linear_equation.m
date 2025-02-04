clear all;
clc;
syms x y
 % 2 system of equations with 2 varaibles
eq1 = 2*x + 8*y ==15;
eq2 = 9*x -6*y ==21;
sol = solve([eq1, eq2] ,[x,y]);
disp(sol.x);
disp(sol.y);

%% system of linear equation with 3 variables 
syms x y z
eq1 = 2*x + y +z ==10;
eq2 = 3*x + 2*y +3*z ==18;
eq3 = x + 4*y +9*z ==16;
sol = solve([eq1 ,eq2 ,eq3] , [x,y,z]);
disp(sol.x);
disp(sol.y);
disp(sol.z);

%% system of linear equation with 4 variables
syms x1 x2 x3 x4
a = 10*x1 - 2*x2 -x3 -x4 ==3;
b = 2*x1 + 10*x2 - x3 -x4 ==15;
c = -x1 -x2 + 10*x3 - 2*x4 ==27;
d = x1 -x2 -2*x3 + 10*x4 ==-9;
sol = solve([a ,b ,c,d] , [x1,x2,x3,x4]);
disp(sol.x1);
disp(sol.x2);
disp(sol.x3);
disp(sol.x4);
double(sol.x1)

%% substitution 
syms x y 
eq = 3*x^2 + 4*y 
subs(eq , {x,y} , {3 ,1})