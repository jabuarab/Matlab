f=@(x) [sin(pi*x),cos(pi*x)]  
    
    A=[f(-1);
       f(-1/2);
       f(0);
       f(1/2);
       f(1)]
   Y=[-1 ;
       0;
       1;
       2;
       1;]
   
   
   AA=A'*A
   c=A'*Y
   x=AA\c
   a=x(1)
   b=x(2)
   
   g=@(x) a*sin(pi*x)+b*cos(pi*x)
   plot([-1 -1/2 0 1/2 1],Y,'bx'),hold on
   fplot (g,[-2 2]),grid on
   