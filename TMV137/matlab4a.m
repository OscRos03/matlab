clear, clc

tspan = [0 3.1];
y0 = 1;

f = @(t, u) -5 * u;

[t, y] = ode45(f, tspan, y0);

plot(t, y, "r")