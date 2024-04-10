clc, clf, clear
hold on
grid on, box on

syms v
f = 0.5 .* (v - 2) .^ 2 - 2 .* cos(2 .* v) - 1.5;

x = linspace(-5, 5, 100);
a = [-1 2.5 2.8];

f0 = matlabFunction(f);
f1 = matlabFunction(diff(f));

plot(x, f0(x))
plot(x, f0(a(1)) + f1(a(1)) .* (x - a(1)));
plot(x, f0(a(2)) + f1(a(2)) .* (x - a(2)));
plot(x, f0(a(3)) + f1(a(3)) .* (x - a(3)));

%%

clc, clf, clear

syms u v
f = 83 - 32 .* u - 38 .* v + 10 * u ^ 2 + 10 .* u .* v + 5 .* v ^ 2;
f0 = matlabFunction(f);

dfdx = matlabFunction(diff(f, u));
dfdy = matlabFunction(diff(f, v));

x = linspace(-5, 5, 30);
y = linspace(-1, 9, 30);
[X, Y] = meshgrid(x, y);
Z = f0(X, Y);

surf(x, y, Z)

hold on

a = [0 4];
L = @(x, y) f0(a(1), a(2)) + dfdx(a(1), a(2)) * (x - a(1)) + dfdy(a(1), a(2)) * (y - a(2));
Z = L(X, Y);

hold off

surf(x, y, Z)
%%
x = linspace(-0.1, 0.1, 30);
y = linspace(3.9, 4.1, 30);
[X, Y] = meshgrid(x, y);
Z = abs(f0(X, Y) - L(X, Y));

surf(x, y, Z)