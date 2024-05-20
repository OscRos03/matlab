clear
clc
clf
hold on

t = linspace(0, 2*pi, 27+1);
x = (cos(t-3)+1).*cos(t);
y = (cos(t-3)+1).*sin(t);
plot(x,y)
grid on
xlabel('x'), ylabel('y')

L=sum(sqrt(diff(x).^2+diff(y).^2))

A=abs(sum((x(2:end)+x(1:end-1)).*(y(2:end)-y(1:end-1))/2))