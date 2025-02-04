clear all;
clc;
syms I1 I2 r v x
%for SINGLE PHASE 2 WIRE
w1 = 2*I1*I1*r;
p1 = v*I1*cos(x);
% for 3 phase 3 wire
p2 = sqrt(3)*v*I2*cos(x);
w2 = 3*I2*I2*r;

%losses are same 
syms I1 I2
I2 = solve(w1/p1==w2/p2,I2)
p2 = sqrt(3)*v*I2*cos(x);
u = p2/p1
additional_load =((p2 - p1)/p1)*100;
display(additional_load)