A=[2 3;1 -4;2 -1]
Y=[1;-9;-1]
[S,V,D]= svd(A,0)
e=V*D'
b=S'*Y
x=e\b


f1=@(x) (1-2*x)/3
f2=@(x) (9+x)/(4)
f3=@(x) (1+2*x)

 
AA=A'*A
b1=A'*Y
x1=AA\b1
 
 
[Q1,R1]=qr(A)
Q=Q1(:,1:rank(Q1))
R=R1(:,1:rank(R1))
b2=Q'*Y
x2=R\b2

fplot(f3,[-5 5],'y-'),hold on
fplot(f2,[-5 5],'y-'),hold on
fplot(f1,[-5 5],'y-'),hold on
plot(x(1),x(2),'g*'),hold on
plot(x1(1),x1(2),'bx'),hold on
plot(x2(1),x2(2),'ro'),hold on
grid on

