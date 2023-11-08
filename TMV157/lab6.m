clear, clc;
hold on

% Uppgift 1
x = linspace(-50, 50, 1000);

f = @(x)x .^ 3 - cos(4 * x);
Df = @(x) 3 * x .^2 + sin(4 * x) * 4;

s=0.35;
kmax=10; tol=0.5e-8;
for k=1:kmax
    h=-f(s)/Df(s);
    s=s+h;
    disp([s h])
    if abs(h)<tol, break, end
end

plot(s, h, 'or')
s = -0.45;

for k=1:kmax
    h=-f(s)/Df(s);
    s=s+h;
    disp([s h])
    if abs(h)<tol, break, end
end

plot(s, h, 'or')
s = -0.95;

for k=1:kmax
    h=-f(s)/Df(s);
    s=s+h;
    disp([s h])
    if abs(h)<tol, break, end
end

axis([-1.5, 0.6, -1.5, 1])


plot(x, x * 0)
plot(x, f(x))
plot(s, h, 'or')

%%
clear, clc;

% Uppgift 2
% newton.m skriven.

%%
clear, clc;
hold on
axis([-2, 6, -15, 15])

% Uppgift 3
x = linspace(-50, 50, 1000);

f = @(x) 0.5 * (x - 2) .^ 2 - 2 * cos(2 * x) - 1.5;
Df = @(x) x + 4 * sin(2 * x) - 2;

plot(x, x * 0)
plot(x, f(x))

n = [-0.35, 0.95, 1.95, 3.85];

for i = 1:size(n, 2)
    x1 = newton(f, Df, n(i), 0.001);
    plot(x1, f(x1), 'or')
end

%%
hold on
axis([-1.5, 0.6, -1.5, 1])

f = @(x) x .^ 3 - cos(4 * x);
Df = @(x) 3 * x .^ 2 + 4 * sin(4 * x);

plot(x, f(x))
plot(x, 0 * x)

n = [-0.95, -0.45, 0.35];

for i = 1:size(n, 2)
    x1 = newton(f, Df, n(i), 0.001);
    plot(x1, f(x1), 'or')
end

%%
clear, clc
hold on
axis([-5, 6, -1, 1])

% Uppgift 4
x = linspace(-20, 20, 1000);

f = @(x) (3 + sin(2 .* x)) ./ (1 + exp(1) .^ (0.03 .* x .^ 2)) - 1.2;

plot(x, 0 * x)
plot(x, f(x))

n = [-3.22, -1.3, -0.3, 1.8, 3, 4.5];
k = [];

for i = 1:size(n, 2)
    k(i) = fzero(f, n(i));
    plot(k(i), f(k(i)), 'o r')
end

k