clf

hold off
grid on, box on

syms x y
f_ = -5 .* x .^ 3 + 4 .* x .* y + 6 .* y .^ 3 - 3;
f = matlabFunction(f_);

dfdx_ = diff(f_, x);
dfdy_ = diff(f_, y);
dfdxx_ = diff(dfdx_, x);
dfdxy_ = diff(dfdx_, y);
dfdyy_ = diff(dfdy_, y);

dfdx = matlabFunction(dfdx_);
dfdy = matlabFunction(dfdy_);

J_ = [dfdx_; dfdy_];
J = matlabFunction(J_);

H_ = [dfdxx_ dfdxy_; dfdxy_ dfdyy_];
H = matlabFunction(H_);

x = linspace(-2, 2, 30);
y = linspace(-2, 2, 30);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);

subplot(1, 2, 1)
surf(x, y, Z);

subplot(1, 2, 2)
hold on
contour(X, Y, Z, 10)
Z = dfdx(X, Y);
contour(X, Y, Z, [0 0])
Z = dfdy(X, Y);
contour(X, Y, Z, [0 0])
hold off

xStart = [-0.2; 0.2];
kmax = 100;
tol = 10^-6;

for k=1:kmax
    hold on
    plot(xStart(1), xStart(2), 'ro')
    hold off

    h=-J(xStart(1), xStart(2))\H(xStart(1), xStart(2));
    xStart=xStart+h';
    if norm(h)<tol, break, end
end