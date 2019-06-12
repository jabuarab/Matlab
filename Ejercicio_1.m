%Ejercicios de clase
%Ejercicio 1
%Quiero hallar la solución al problema de mínimos cuadrados lineales,
%ajustando por una recta (es solamente un coeficiente que quiero encontrar)

A=[1 4; 1 7; 1 11; 1 13; 1 17];
%Matriz

b=[2; 0; 2; 6; 7];
%Coeficientes que conozco
sol=inv(A'*A)*A'*b;

title('Método de mínimos cuadrados')
grid on;
f=@(x) sol(1)+sol(2)*x;
fplot(f,[0 20],'m');

hold on;
plot(4,2,'xb');
hold on;
plot(7,0,'xb');
hold on;
plot(11,2,'xb');
hold on;
plot(13,6,'xb');
hold on;
plot(17,7,'xb');

legend('Solución de mínimos cuadrados','Datos');