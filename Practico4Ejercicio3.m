f=@(t)[1,t,t^2]
A=[ f(1);
    f(2);
    f(3);
    f(4);
    f(5);
    f(6);
    f(7)]
V=[2.31;
   2.01;
   1.80;
   1.66;
   1.55;
   1.41;
   1.41]
AA=A'*A
e=A'*V
x=AA\e
a=x(1)
b=x(2)
c=x(3)
g=@(T)a+b*T+c*T^2
fplot(g,[-1 8]),hold on
plot(1,V(1),'rx'),hold on
plot(2,V(2),'rx'),hold on
plot(3,V(3),'rx'),hold on
plot(4,V(4),'rx'),hold on
plot(5,V(5),'rx'),hold on
plot(6,V(6),'rx'),hold on
plot(7,V(7),'rx'),hold on
grid on