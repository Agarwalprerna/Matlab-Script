clear all;
clc;
vline = 345000;
Vrph = vline/sqrt(3)
z = (0.036+ j*0.3)*130;
Y = (j*4.22*130)/1000000;
y= 4.22*130/(1000000);
P = 50 *10^6;

Irph = P/(3*Vrph*0.95);
Ir= Irph*(0.95 - j*0.312);
Ic = j*y*Vrph;
Is = Ir + Ic;
fprintf('sending end current: ')
fprintf('%d\n',abs(Is) )
drop = Is*z;
Vs = Vrph + drop;
fprintf('sending end voltage:')
fprintf('%d\n',abs(Vs))
VR = ((abs(Vs) -Vrph)/(Vrph)) *100;
fprintf('voltage regulaion : ')
fprintf('%d\n',VR)
efficiency = (Vrph*Irph*0.95)/(Vrph*Irph*0.95 + abs(Is)*abs(Is)*0.036) 





