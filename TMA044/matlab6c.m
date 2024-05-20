clear
clc
clf
hold on

x = linspace(-2,2,20);
y = linspace(-2,2,20);

[X, Y] = meshgrid(x, y);
quiver(X, Y, sin(X .* Y), cos(1.2 .* X - 1.5 .* Y))