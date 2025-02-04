clear all;
clc;
v1 = 220*10^3;
s = 30000*10^3
rho = 1.73*10^-8;
l = 1*1000;
pf = 0.8;
I1 = s/(sqrt(3)*v1)
syms r 
w1 = 3*I1*I1*r;
p1 = sqrt(3)*v1*I1*pf;
r = solve(w1/p1 ==0.1,r)
a = (rho*l)/r
vol = 3*a*l












