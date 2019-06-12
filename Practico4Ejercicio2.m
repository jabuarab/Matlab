
f=@(t)[t,t^3,1]
A=[f(-1);
    f(0);
    f(1);
    f(2)]
[Q1,R1]=qr(A)
Y=[(7/2);(3/2);(3/2);(11/2)]
Q =Q1(:,1:rank(Q1))
R = R1(:,1:rank(R1))
b=Q'*Y
x=R\b
plot(-1,Y(1),'go'),hold on
plot(0,Y(2),'go'),hold on
plot(1,Y(3),'go'),hold on
plot(2,Y(4),'go'),hold on

g=@(t) x(1)*t + x(2)*t^3+ x(3)

fplot(g, [-2 3],'r-'),hold on 
grid on