clear, clc

n = 50;
a = 0;
b = 3;
f = @(x) x .* cos(x);

x = linspace(a, b, n+1);
h = (b - a) / n;
g = f(x(1:n));

q = sum(h*g)

error = -1 + 3 .* sin(3) + cos(3) - q

n = 200;

x = linspace(a, b, n+1);
h = (b - a) / n;
g = f(x(1:n));

q = sum(h*g)

error2 = -1 + 3 .* sin(3) + cos(3) - q

error / error2

%%

clear, clc
hold on

n = 50;
a = 0;
b = 3;
f = @(x) x .* cos(x);

w = (b-a) / n;
q = 0;

for i = 1:n
    x = a + i * w;
    x2 = a + (i-1) * w;
    q = q + (w * (f(x2) + f(x)))/2;
end

error = -1 + 3 .* sin(3) + cos(3) - q

n = 200;
a = 0;
b = 3;
f = @(x) x .* cos(x);

w = (b-a) / n;
q = 0;

for i = 1:n
    x = a + i * w;
    x2 = a + (i-1) * w;
    q = q + (w * (f(x2) + f(x)))/2;
end

error2 = -1 + 3 .* sin(3) + cos(3) - q

error/error2