x=[1/3,1/4,1]
y=[2,-1,7]


L=@(t,j2,j1,j) ((t-x(j2))*(t-x(j1)))/((x(j)-x(j2))*(x(j)-x(j1)))

Y =@(t) y(1)*L(t,2,3,1)+y(3)*L(t,1,2,3)+y(2)*L(t,3,1,2)

fplot(Y,[0 2]),hold on
grid on
plot (x,y,'rx')