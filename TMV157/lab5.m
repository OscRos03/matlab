clear, clc

% Uppgift 1
x = linspace(-2, 5, 1000);
e = exp(1);
f = @(x)((x - 2.5) .* e .^ (-0.5 .* (x - 2) .^ 2) + 0.2);
plot(x, f(x))

% Uppgift 2
a = -1;
b = 0;

f(a) .* f(b) % Blir negativ

m = (a + b)/2

if (f(a) .* f(m) < 0)
    b = m
else
    a = m
end

a
b

% Uppgift 3

% Okej.

% Uppgift 4
min_bisect(f, [-1, 0], 0.00001)
min_bisect(f, [2, 3], 0.00001)

%%
clear, clc

% Uppgift 5

hold on

x = linspace(-1, 50, 1000);
plot(x, kastbana2(x))
min_bisect(@kastbana2, [11, 12], 0.0001)