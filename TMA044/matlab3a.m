clf

hold off
grid on, box on

syms x y
f1_ = x .* exp(x .* y + 0.2) + exp(y .^ 2) - 5;
f2_ = x .^ 2 - y .^ 2 - 1.2 * exp(x .* y);
F_ = [f1_; f2_];
DF_ = [diff(F_, x) diff(F_, y)];


f1 = matlabFunction(f1_);
f2 = matlabFunction(f2_);
F = matlabFunction(F_);
DF = matlabFunction(DF_);

x = linspace(-3, 3, 100);
y = linspace(-3, 3, 100);
[X, Y] = meshgrid(x, y);

hold on
Z = f1(X, Y);
contour(X, Y, Z, [0 0])
Z = f2(X, Y);
contour(X, Y, Z, [0 0])
hold off

xStart = [1.5903; 0.4227];
kmax = 100;
tol = 10^6;

for k=1:kmax
    h=-DF(xStart(1), xStart(2))\F(xStart(1), xStart(2));
    xStart=xStart+h;
    if norm(h)<tol, break, end
end

hold on
plot(xStart(1), xStart(2), 'ro')
hold off

xStart