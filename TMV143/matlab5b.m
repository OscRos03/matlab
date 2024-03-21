clc, clf, clear

A=[
    2 -1;
    -3 5
]; 

u0=[
    -1;
    5
    ]; 

T = 5;

[V,D]=eig(A);
v1=V(:,1);
v2=V(:,2); d1=D(1,1);
d2=D(2,2);
C=inv(V)*u0;
c1=C(1);
c2=C(2);

F=@(t)c1*v1*exp(d1*t)+c2*v2*exp(d2*t);

x=linspace(0,T,300);
G = F(x);


u1=linspace(-4,4,20); u2=linspace(-4,4,20);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9)
axis([-4 4 -4 4]), hold on
plot(G(1,:),G(2,:),'r','LineWidth',2)

%%

format short
clc,clf,clear
A=[
    0 -1;
    -3 3
]; 
u0=[1;1];
F=@(t,u)A*u;
[t,U]=ode45(F,[0 1],u0)

u1=linspace(-7,1,50); u2=linspace(-5,7,50);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9)
axis([-6 -.1 -4 5]), hold on
plot(U(:,1),U(:,2),'r','LineWidth',2)