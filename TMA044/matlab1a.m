clear, clc

% -xye^(-2(x^2+y^2))
% f(x,y)=\sin(y-x)\cos(x+1+3 y)

%f = @(x,y) -x.*y.*exp(-2.*(x.*x+y.*y));
%f = @(x,y) sin(y-x) .* cos(x + 1 + 3 .* y);
%f = @(x, y) x + 2.*y - 2;
f = @(x, y) x.*x - y.*y;
x = linspace(-2,2,30); 
y = linspace(-2,2,30);
[X,Y] = meshgrid(x,y);
Z = f(X,Y);
surf(X, Y, Z)
grid on, box on