clear, clc

td = [1900 1904 1908 1912]';
yd = [7.18 7.35 7.48 7.60]';

A = [ones(size(td)) td];
x = A\yd;
a = x(1); b = x(2);

l = linspace(1900, 2100);
f = @(m) a + b * m;

plot(l, f(l))