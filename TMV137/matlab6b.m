clear, clc
format long;
x = 0;

f = @(x) (cos(x) + sin(2 * x))/(2 * exp(x) - x * x);

syms x
T = taylor(f(x),x, 'Order', 3)
T = @(x) x/2 - (3*x^2)/4 + 1/2;

abs(f(1) - T(1))