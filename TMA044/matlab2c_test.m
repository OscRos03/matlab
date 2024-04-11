%% Uppg3
clear
clc
clear all

syms v u
f0 = [v .^3 .* u.^3 .* sin(v.^2 .* u.^1); v .^ 1 ./ u.^3];

f = matlabFunction(f0);

dfdx = matlabFunction(diff(f0, u));
dfdy = matlabFunction(diff(f0, v));

a = [-2,-2];
x = a(1);
y = a(2);
%f = @(x, y) [x.^3 + y.^2 - 1; exp(x .* y)+x+y-2];
Df = [dfdx(x, y); dfdy(x, y)];
L = @(X,Y) f(x,y) +Df*([X; Y] - [x; y]);
%disp(L)
%disp(L(1.5,1.8))
%disp(f(1.5,1.8))