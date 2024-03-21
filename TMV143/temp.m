clc
clear


A = sym([-31 -15; 30 24])
u0 = sym([-3;2]);

[V,D]=eig(A)

c = V\u0
syms t
u=c(1)*V(:,1)*exp(D(1,1)*t)+c(2)*V(:,2)*exp(D(2,2)*t)

%% B
clf
clc
clear
A = [0 -1;-2 -2];
T = 1;
u0 = [1;-1];
f=@(t,u)A*u;
[t,U]=ode45(f,[0,T],u0)

u1=linspace(-6,6,30); u2=linspace(-6,6,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9)
axis([-6 6 -6 6]), hold on
plot(U(:,1),U(:,2),'r','LineWidth',2)