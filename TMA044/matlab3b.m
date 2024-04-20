clf

hold off
grid on, box on

syms x y
f1_ = x .^ 2 - y .^ 2 - 65;
f2_ = x .^ 2 + y .^ 2 - 97;
F_ = [f1_; f2_];
DF_ = [diff(F_, x) diff(F_, y)];


f1 = matlabFunction(f1_);
f2 = matlabFunction(f2_);
F = matlabFunction(F_);
DF = matlabFunction(DF_);

x = linspace(-10, 10, 100);
y = linspace(-10, 10, 100);
[X, Y] = meshgrid(x, y);

hold on
Z = f1(X, Y);
contour(X, Y, Z, [0 0])
Z = f2(X, Y);
contour(X, Y, Z, [0 0])
hold off

xStart = [7; -3];
kmax = 100;
tol = 10^-6;

for k=1:kmax
    hold on
    plot(xStart(1), xStart(2), 'ro')
    hold off

    norm(xStart - [9; -4])

    h=-DF(xStart(1), xStart(2))\F(xStart(1), xStart(2));
    xStart=xStart+h;
    if norm(h)<tol, break, end
end



xStart