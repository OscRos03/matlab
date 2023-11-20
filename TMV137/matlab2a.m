clear, clc

g = @(x)exp((x .* x)./-2);
h = @(x)x .* x - 3 * x - 2;

f = @(x)exp((x .* x)./-2) - (x .* x - 3 * x - 2);

a = fzero(f, 0)
b = fzero(f, 5)

integral(g, a, b) - integral(h, a, b)