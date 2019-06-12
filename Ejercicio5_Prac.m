%Práctico Mínimos cuadrados
%Ejercicio 5

A=[2 3; 1 -4; 2 -1];
b=[1; -9; -1];

[S,V,D]=svd(A,0);
%Si lo hago de esta manera, poniendo svd(A,0) obtengo ya las matrices con
%los tamaños que necesito

coefs=D*inv(V)*S'*b;

f=@(x) 1/3-(2/3)*x;
g=@(x) x/4+9/4;
h=@(x) 2*x+1;

fplot(f,[-2 2],'m'); hold on;
fplot(g,[-2 2],'b'); hold on;
fplot(h,[-2 2],'c'); hold on;
plot(coefs(1),coefs(2),'rx');
grid on;
title('Mínimos cuadrados con SVD');