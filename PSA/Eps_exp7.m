clear all;
clc;
vph = 400;
efficieny= 0.93;
f = 50;
pout = 74.6 *1000;
theta1 = acos(0.75);
theta2 = acos(0.95);
pin = pout/efficieny ;

Qc = pin*(tan(theta1)- tan(theta2));
qc = Qc/3;

C = (qc) / (2*3.14*f*vph*vph)
ceq = 4*C;
fprintf('capacitance per phase: ')
fprintf('%d',ceq)


