%Ejercicios de clase
%Ejercicio 2
%Es un sistema lineal porque lo puedo expresar mediante una matriz

x=[0.24 0.65 0.95 1.24 1.73 2.01 2.23 2.52 2.77 2.99];

A=zeros(10,3);
for i=1:10
    A(i,1)=log(x(i));
    A(i,2)=cos(x(i));
    A(i,3)=exp(x(i));
end

b=[0.23; -0.26; -1.10; -0.45; 0.27; 0.10; -0.29; 0.24; 0.56; 1];

coefs=inv(A'*A)*(A')*b;

f=@(x) coefs(1)*log(x)+coefs(2)*cos(x)+coefs(3)*exp(x);
fplot(f,[0 3.5],'-m');
grid on; hold on;
title('Minimos cuadrados');

for i=1:10
    plot(x(i),b(i),'bx');
    hold on
end

legend('Mínimos cuadrados','Datos');