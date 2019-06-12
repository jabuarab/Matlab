x =[1 2 3 4 ]
y =[2 1 6 47]
plot(x,y,'rx')
f=@(t) [1 t t*t t*t*t]
M=[ f(x(1));
    f(x(2));
    f(x(3));
    f(x(4))]
c=M\y'
f=@(t)[1 t t*t t*t*t]*c
fplot (f,[1 4]),hold on
q=@(t) t^4 - 5*t^3 + 8*t^2 -5*t+3 
fplot (q,[1 4],'b-'),hold on