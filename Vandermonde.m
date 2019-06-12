 %%function []= Vandermonde(x,y)%% f es un vecctor donde estan los "t"
syms t
x=[1/3,1/4,1]
y=[2,-1,7]
M =[]
f=[1]
j=1
n=1
f=@(t) [1, t ,t^2]
for i =1:length(x)
    M(end+1,:)=f(x(i))
    
end

c=M\(y')
P=@(t) f(t)*c
fplot(P,[0 2],'g*'),hold on
