clc, clear

A = [
    -31 -15
    30, 24
    ];

u0 = [
    -3
    2
    ];

V = [
   -0.8321    0.3162
    0.5547   -0.9487
    ];

D = [
   -21     0
     0    14
];

F = @(t, u) A*u;
[t, U] = ode45(F, [0 10], u0);

u1 = linspace(-1, 5, 30);
u2 = linspace(-1, 5, 30);

[U1, U2] = meshgrid(u1, u2);
F1 = A(1, 1) * U1 + A(1, 2) * U2;
F2 = A(2, 1) * U1 + A(2, 2) * U2;

quiver(U1, U2, F1, F2, 0.9)
axis([-1 5 -1 5])
hold on

% plot(U(:, 1), U(:, 2), 'r', 'LineWidth', 2)

plot(V)

C = V \ u0;