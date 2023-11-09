clear, clc

n = 50;
a = 0;
b = 1;
f = @(x) x .* sin(x);
x = linspace(a, b, n + 1);
h = (b - a) / n;
g = f(x(1:n));

q = sum(h*g)

plot(x:n, f(x:n))

%%

clear, clc

n = 50;
a = 0;
b = 1;
f = @(x) x .* sin(x);
x = linspace(a, b, n + 1);
w = (b - a) / n;
h = f(x(1:n)+w/2);

q = sum(w*h)

plot(x:n, f(x:n))