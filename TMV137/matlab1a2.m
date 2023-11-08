clear

n = 50;
a = 0;
b = 3;
f = @(x) x .* cos(x);
x = linspace(a, b, n);
h = (b - a) / n;
g1 = f(x(1:n));
gg = h*g1;
q = sum(gg)

error = -1 + 3 .* sin(3) + cos(3) - q