% Vänster rektangelregel
clear

hold on

n = 200;

from = 0;
to = 3;

x = linspace(from, to, 1000);

dx = (to - from) / n;

f = @(x)x * cos(x);

sum = 0;

for i = 0:(n-1)
   sum = sum + f(i * dx) * dx;
end

sum

error = -1 + 3 * sin(3) + cos(3) - sum