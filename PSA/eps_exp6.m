clc 
%u22ee30 prerna agarwal
SCC=250; 
E=10; 
v=10; 
phi = atan(5); 
z=((E^2)/SCC); 
r=z*cos(phi); 
x=z*sin(phi); 
p=25; 
a=(r^2)+(x^2); 
b=2*(v^2)*x; 
c= (v^4)+(2*(v^2)*r*p)+((r*p)^2)+((x*p)^2)-((v*E)^2); 
Q=50; 

poly = [a b c]; 
r=roots(poly); 
if r(1)>r(2) % maximum root 
    Qs=r(1); 
else 
    Qs=r(2); 
end 
Qy=Qs-Q; 
fprintf("Final answer is: - "); 
disp(Qy); 