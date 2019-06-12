x= [-1 0 2]
y =[5 2 -40]
y1= [12 -7 -51]


l1=@(z) ((z*(z - 2))/3)

l2=@(z) (-((z + 1)*(z - 2))/2)

l3=@(z) (z*(z + 1))/6
dl1=@(z) (4*z)/3 - 1/3
dl2=@(z) -4*z - 1
dl3=@(z) (8*z)/3 + 4/3
d2l1= 4/3
d2l2= -4
d2l3= 8/3

h1=@(z) (1-2*l1(z)*(z-x(1)))*(l1(z))^2
h2=@(z) (1-2*l2(z)*(z-x(2)))*(l2(z))^2
h3=@(z) (1-2*l3(z)*(z-x(3)))*(l3(z))^2

dh1=@(z)(-2*dl1(z)*l1(z)*l1(z))+2*l1(z)*dl1(z)*(1-2*dl1(z)*(z-x(1)))-2*(d2l1)*(z-x(1))*l1(z)*l1(z)
dh2=@(z)(-2*dl2(z)*l2(z)*l2(z))+2*l2(z)*dl2(z)*(1-2*dl2(z)*(z-x(2)))-2*(d2l2)*(z-x(2))*l2(z)*l2(z)
dh3=@(z)(-2*dl3(z)*l3(z)*l3(z))+2*l3(z)*dl3(z)*(1-2*dl3(z)*(z-x(3)))-2*(d2l3)*(z-x(3))*l3(z)*l3(z)

nh1=@(z) (z-x(1))* l1(z)*l1(z)
nh2=@(z) (z-x(2))* l2(z)*l2(z)
nh3=@(z) (z-x(3))* l3(z)*l3(z)

dnh1=@(z) l1(z)*l1(z) + 2*l1(z)*(z-x(1))*dl1(z)
dnh2=@(z)  l2(z)*l2(z) + 2*l2(z)*(z-x(2))*dl2(z)
dnh3=@(z)  l3(z)*l3(z) + 2*l3(z)*(z-x(3))*dl3(z)

H=@(z) 5*h1(z)+2*h2(z)-40*h3(z)+12*nh1(z)-7*nh2(z)-51*nh3(z)

    plot (x,y,'*r');
hold on;
grid on;
fplot (H,[x(1) x(end)])
legend('Datos obtenidos','Aproximacion')

