clear all 
clc;
f1 = @(t, y,z) z;
f2 = @(t,y,z)  (exp(-t)) -y-2*z;
t = input('enter value of time where  to find: ');
to = input('enter initial value of time: ');
yo = input('enter initial value of y: ');
z = input('enter dy/dt :');
h = input('enter intervals: ');
n = (t-to)/h;
         %euler
fprintf(' ti  yi  zi  yi+1  zi+1\n')
y(1) = yo;
z(1)= z;
t(1) = to;
               
 for i =1:n
    t(i+1) = t(i) + i*h;
    y(i+1) = y(i) + h*(f1(t(i),y(i),z(i)));
    z(i+1) = z(i) +h*f2(t(i),y(i),z(i));
    fprintf('%d) %d %d %d %d %d\n',i,t(i+1),y(i),z(i),y(i+1),z(i+1));
 end
 fprintf('y(%f)= %f',t(i),y(i+1));

%          %modified euler
% yc(1) = yo;
% t(1) = to;
% zc(1) = z;
% fprintf('ti  zi yi y(i+1)p y(i+1)c z(i+1)p z(i+1)c\n')
% for i =1:n
%     t(i+1)= t(i) + i*h;
%     yp(i+1) = yc(i) + h*f1(t(i),yc(i),zc(i));
%     yc(i+1) = yc(i) + 0.5*h*(f1(t(i),yc(i),zc(i)) + f1(t(i)+h,yp(i+1) ,zc(i)));
%     zp(i+1) = zc(i) + h*f2(t(i),yc(i),zc(i));
%     zc(i+1) = zc(i) + 0.5*h*(f2(t(i),yc(i),zc(i))+ f2(t(i)+h,yc(i),zp(i+1)));
%     fprintf('%d %d %d %d %d %d %d\n',t(i+1),yc(i),zc(i),yp(i+1),yc(i+1), zp(i+1) ,zc(i+1));
% end
% yc(i+1) 





 
