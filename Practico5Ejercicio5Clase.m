x =[-1 0 1/2 1 2 ]
y=[ 2 1 0 1 2 ]
plot(x,y),hold on
syms z
F= sym(x_%d,[1 4])
for i=1:length(x)-1
   L =@(t) ((y(i+1)-y(i))/(x(i+1)-x(i)))*(t-x(i)) + y(i)
   fplot(L,[x(i),x(i+1)]),hold on
   F(i)=L(z)
end
