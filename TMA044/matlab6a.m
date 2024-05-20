clear
clc
clf
hold on

t = linspace(0, 2*pi, 300);
x = (cos(36 .* t)) .^ 3;
y = (t/6) .* ((sin(12 .* t)) .^ 3);
z = t;
plot3(x,y,z)
grid on
xlabel('x'), ylabel('y'), zlabel('z','rotation',0)