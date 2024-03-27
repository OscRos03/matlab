clear, clc

%f=@(x,y) sin(x - y) * cos(3 * x + 1 + y);
%f = @(x,y) exp(1 + 0.5 .* (x-1) .* cos(5 .* y))
%f = @(x, y) exp(1 + 0.5 .* cos(5.*x) .* (y-1))
f = @(x,y) sin(y-x) .* cos(x + 1 + 3 .* y);
x=linspace(-1,3,40); 
y=linspace(0,4,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
contour(X,Y,Z,30)