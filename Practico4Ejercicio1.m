

f=@(t)[t,t^3,1]
A=[f(-1);
    f(0);
    f(1);
    f(2)]
AA=A'*A
Y=[(7/2);(3/2);(3/2);(11/2)]
b=A'*Y
x=AA\b
alf=x(1)
bet=x(2)
phi=x(3)
g=@(t) alf*t + bet*t^3+phi
fplot(g,[-3 3],'b*') ,hold on
plot(-1,Y(1), 'rx'),hold on
plot(0,Y(2), 'rx') ,hold on
plot(1,Y(3), 'rx') ,hold on
plot(2,Y(4), 'rx') ,hold on, grid on



