syms x y
f_ = x .^ 3 + 0.3 .* x .^ 2 + 3.2 .* x .* y + y .^ 3 - 1.1 .* y;
f = matlabFunction(f_);

sk = 0.04;

dfdx_ = diff(f_, x);
dfdy_ = diff(f_, y);

J_ = [dfdx_; dfdy_];
J = matlabFunction(J_);

x = linspace(-5, 5, 30);
y = linspace(-5, 5, 30);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);
surf(x, y, Z);

x = [-1 -1];
kmax = 999;
tol = 0.5*10^-4;
for k=1:kmax
    grad = J(x(1), x(2));
    x2 = x;
    x = x + sk * grad;
    n = norm(x2 - x);
    if norm(x2 - x) < tol, break, end
end

%%
clear, clf

syms x y
f_ = x .^ 3 + 0.3 .* x .^ 2 + 3.2 .* x .* y + y .^ 3 - 1.1 .* y;
f = matlabFunction(f_);
fWrapper = @(s) f(s(1), s(2));

dfdx_ = diff(f_, x);
dfdy_ = diff(f_, y);

J_ = [dfdx_; dfdy_];
J = matlabFunction(J_);

x = linspace(-5, 5, 30);
y = linspace(-5, 5, 30);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);
subplot(2, 1, 1)
surf(x, y, Z);
subplot(2, 1, 2)
hold on
contour(X, Y, Z, 10)

x = [-1 -1];
kmax = 999;
tol = 0.5*10^-4;
for k=1:kmax
    plot(x(1), x(2), 'ro')
    grad = normalize(J(x(1), x(2)));
    g = @(s) fWrapper(x - s * grad');
    alpha = fminbnd(g, 0, 1);         % Hur långt i gradientens riktning skall jag gå för minsta funktionsvärde?
    subplot(2, 1, 1)
    hold on
    plot3(x(1), x(2), f(x(1), x(2)), 'ro')
    hold off
    subplot(2, 1, 2)
    hold on
    plot([x(1) x(1)+grad(1) * alpha], [x(2) x(2)+grad(2) * alpha])
    hold off
    
    x2 = x;
    x = x + alpha * grad';
    g(alpha)
    n = norm(x2 - x)
    if norm(x2 - x) < tol, break, end
end