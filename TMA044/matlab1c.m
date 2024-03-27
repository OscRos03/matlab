f = @(x,y) 5 .* sin(x./2) .* sin(y ./ 2) - x./3 + y ./2;
x=linspace(0,8,40); 
y=linspace(0,6,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
axis equal
subplot(1, 2, 1)
contour(X,Y,Z,40)
subplot(1, 2, 2)
surf(X,Y,Z)