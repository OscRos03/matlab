clc, clf, clear
hold off
grid on, box on

syms v u
f0 = sin((u.*v)./2);
f = matlabFunction(f0);

x = linspace(-2, 3, 30);
y = linspace(-2, 3, 30);

[X, Y] = meshgrid(x, y);
Z = f(X, Y);

surf(x, y, Z)

dfdx = matlabFunction(diff(f0, u));
dfdy = matlabFunction(diff(f0, v));

a = [2 2];
L = @(x, y) f(a(1), a(2)) + dfdx(a(1), a(2)) * (x - a(1)) + dfdy(a(1), a(2)) * (y - a(2));
n = @(x, y) [dfdx(x,y); dfdy(x,y); -1];
n0 = n(-0.5, -1);
p0 = [-0.5; -1; f(-0.5, -1)];

Z = L(X, Y);
hold on
surf(x, y, Z)
s=[-3 3];
plot3(p0(1) + s * n0(1), p0(2) + s * n0(2), p0(3) + s * n0(3), 'm' , 'linewidth', 2)
hold off