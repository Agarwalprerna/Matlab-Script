clc
clear all
pf = 0.8;
v = 220*10^3;
p = 300000*10^3;
i = p/(v*pf)
syms r 
w = 2*i^2*r;
r = 0.1*p/(2*i^2)
pho = 1.73*10^-8;
a = (pho*275*1000)/r
vol = 2*a*275*1000
m = vol*(8.9*1000)