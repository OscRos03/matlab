clc, clf, clear
hold off
grid on, box on

syms u v
f0 = [u .^3 .* v.^3 .* sin(u.^2 .* v.^1); u .^ 1 ./ v.^3];

f = matlabFunction(f0);

dfdx = matlabFunction(diff(f0, u));
dfdy = matlabFunction(diff(f0, v));

a = [-2; -2];
L = @(x, y) f(a(1), a(2)) + dfdx(a(1), a(2)) * (x - a(1)) + dfdy(a(1), a(2)) * (y - a(2));

fa = f(a(1), a(2));
Df = [dfdx(a(1), a(2)) dfdy(a(1), a(2))];

x = a - Df\fa
l = L(x(1), x(2))