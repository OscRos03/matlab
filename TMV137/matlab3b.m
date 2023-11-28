clear, clc
format short

LA = (-8+31.^(3/2))/27

f = @(x) x.^(3/2);

a = 0;
b = 3;

n = 50;

x = linspace(a, b, n+1);
y = f(x);

L = 0;

for i = 1:n
    dy = y(i+1) - y(i);
    dx = x(i+1) - x(i);
    L = L + sqrt(dx^2 + dy^2);
end

abs(LA - L)