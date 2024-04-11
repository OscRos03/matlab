clear, clc, clf

yd = [-2.6 -2.7 0.3 4.7 10.0 14.5 15.9 15.0 11.3 7.5 2.8 -0.7]';
td = [1 2 3 4 5 6 7 8 9 10 11 12]';

w = pi/6;

A = [ones(size(td)) sin(w * td) cos(w * td)];
x = A\yd;
a = x(1); b = x(2); c = x(3);

n = length(td);
e = norm(A*x - yd)/sqrt(n);

l = linspace(0, 24);
f = @(m) a + b * sin(w * m) + c * cos(w * m);

hold on
plot(l, f(l))
plot(td, yd)