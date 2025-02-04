clear all
clc

%guass elimination
% a = input('enter coefficient ');
% b = input('enter source vector ');
% n= length(b);
% aug = [a b]
% for j = 1:n 
%     for i = j+1 :n
%         m = aug(i,j)/aug(i,j)
%         aug(i, :) = aug(i,: )- m*aug(j , :)
%     end
% end
% x = zeros(n,1)
% x(n) = aug(n ,n+1)/aug(n,n)
% 
% for k = n-1:-1:1
%     x(k)=(aug(k,n+1) - aug(k,k+1: n)*x(k+1 : n))/aug(k,k)
% end
% 
% %guass jordan 
% a = input('enter coefficient ');
% b = input('enter source vector ');
% n= length(b);
% aug = [a b]
% for j = 1:n
%     aug(j,: ) = aug(j, :)/aug(j,j)
%     for i = 1:n
%         if i ~=j
%              m = aug(i,j)/aug(i,j)
%              aug(i, :) = aug(i,: )- m*aug(j , :)
%         end
%     end
% end
% fprintf(' x y z\n');
% fprintf('%f  %f  %f %f',aug(: ,end))

%L U 
A = input('enter coefficient ');
B = input('enter source vector ');
n = length(B);
L = zeros(n,n);
U = zeros(n,n);

for d =1:n
    L(d,d)=1
end

U(1,:) = A(1 ,:);
L(: ,1)= A(: ,1)/U(1,1);

for i = 2:n
    for j =1:n
        U(i,j) = A(i,j) - L(i,1: i-1)*U(1 : i-1,j)
    end
    for k=i+1 :n
        L(k,i) = (A(k,i) - L(k,1:i-1)*U(1: i-1,i))/U(i,i)
    end
end
L , U
y = zeros(n,1)
y(1) = B(1)/L(1,1);

for k = 2:n
    y(k)= (B(k) - L(k,1: k-1)*y(1:k-1))/L(k,k)
end

x = zeros(n,1)
x(n) = y(n)/u(n,n)
for k = n-1:-1 :1
    x(k) = (y(k) - U(k,k+1 :n)*x(k+1 :n))/U(k,k)
end
