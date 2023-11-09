clear, clc

n = 50;
a = 0;
b = 3;
f = @(x) x .* cos(x);
x = linspace(a, b, n);
h = (b - a) / n;
g = f(x(1:n));

q = sum(h*g)

error = -1 + 3 .* sin(3) + cos(3) - q