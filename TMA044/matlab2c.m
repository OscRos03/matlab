clc, clf, clear
hold off
grid on, box on

syms v u
F1 = v .^2 .* u.^2 .* sin(v.^1 .* u.^2);
F2 = v .^ 1 ./ u.^3;

f1 = matlabFunction(F1);
f2 = matlabFunction(F2);

df1dx = matlabFunction(diff(F1, u));
df1dy = matlabFunction(diff(F1, v));
df2dx = matlabFunction(diff(F2, u));
df2dy = matlabFunction(diff(F2, v));

a = [2 3];
L1 = @(x, y) f1(a(1), a(2)) + df1dx(a(1), a(2)) * (x - a(1)) + df1dy(a(1), a(2)) * (y - a(2));
L2 = @(x, y) f2(a(1), a(2)) + df2dx(a(1), a(2)) * (x - a(1)) + df2dy(a(2)) * (y - a(2));
L = @(x, y)[L1(x, y) L2(x, y)];

Fa = [f1(a(1), a(2)); f2(a(1), a(2))];
DFa = [
    df1dx(a(1), a(2)) df1dy(a(1), a(2)); 
    df2dx(a(1), a(2)) df2dy(a(2))
    ];

x = a' - DFa\Fa
L(x(1), x(2))