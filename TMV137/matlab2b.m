clear, clc

format long

f = @(x)1./(1 + x .* x);

integral(f, 0, 1)