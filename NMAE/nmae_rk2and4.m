clear all;
clc
f1 = @(t, y,z) z;
f2 = @(t,y,z)  20 -7*z -10*y;
t = input('enter value of time where  to find: ');
to = input('enter initial value of time: ');
yo = input('enter initial value of y: ');
z = input('enter dy/dt :');
h = input('enter intervals: ');
n = (t-to)/h;

%% RK 2
% t(1) = to;
% y(1) = yo;
% z(1) = z;
% fprintf('ti  yi zi  y(i+1)  z(i+1)\n');
% for i = 1:n
%     t(i+1) = t(i)+ i*h;
%     k1_y = f1(t(i),y(i),z(i));
%     k1_z= f2(t(i),y(i),z(i));
%     k2_y= f1(t(i)+h, y(i)+ k1_y*h , z(i)+ k1_z*h);
%     k2_z = f2(t(i)+h , y(i)+ k1_y*h,z(i) + k1_z*h);
%     y(i+1) = y(i) + 0.5*h*(k1_y + k2_y);
%     z(i+1) = z(i) + 0.5*h*(k1_z + k2_z);
%     fprintf('%d %d %d %d %d\n',t(i+1),y(i),y(i+1),z(i),z(i+1));
% 
% end
% fprintf('y(%f) = %f',t(i),y(i+1));

%% RK 4
t(1) = to;
y(1) = yo;
z(1) = z;
fprintf('ti   yi  zi   y(i+1)   z(i+1)\n');
for i =1:n
    t(i+1) = t(i)+ i*h;
    k1_y= f1(t(i),y(i),z(i));
    k1_z = f2(t(i),y(i),z(i));
    k2_y = f1(t(i)+ 0.5*h ,y(i) + 0.5*h*k1_y, z(i) + k1_z*0.5*h);
    k2_z = f2(t(i) + 0.5*h ,y(i) +0.5*h*k1_y, z(i)+0.5*h*k1_z);
    k3_y= f1(t(i) + 0.5*h,y(i)+ 0.5*h*k2_y, z(i) + 0.5*h*k2_z);
    k3_z = f2(t(i) + h, y(i)+ 0.5*h*k2_y,z(i) + 0.5*h*k2_z);
    k4_y = f1(t(i)+h , y(i) + k3_y*h,z(i) + k3_z*h);
    k4_z = f2(t(i) +h,y(i)+ k3_y*h, z(i) + k3_z*h);
    y(i+1) = y(i) + (h/6)*(k1_y +2*k2_y + 2*k3_y+k4_y);
    z(i+1) = z(i) + (h/6)*(k1_z + 2*k2_z + 2*k3_z +k4_z);
    fprintf('%d   %d    %d    %d   %d\n', t(i+1),y(i),y(i+1),z(i),z(i+1));
end
fprintf('y(%f) = %f',t(i),y(i+1));
 