clear, clc;

% Uppgift 1
r = 4
A = pi * r^2;

%%

clear, clc;
% Uppgift 2
% Skapa vektor x från 0 till 4pi med steg 0.1
x = 0:0.1:4*pi;
% Skapa funktion f
f = sin(x) + 0.3 * sin(5*x);
% Rita funktion f över värden i x
plot(x, f)

%%

clear, clc;
% Uppgift 3
% Definiera summa-variabel
s = 0
% For-loop för att iterera över 1:5
for i = 1:5
    % Addera i^2 till s
    s = s + i^2;
end

% Skriv ut s
s

%%

clear, clc;
% Uppgift 4
% Funktion i noll_fun.m
% Skapa vektor x från -10 till 10
x = linspace(-10, 10);
y = noll_fun(x);

z1 = fzero(@noll_fun, -1);
z2 = fzero(@noll_fun, 1);

plot(x, y, 2)
xlabel('x')
ylabel('y')
title('f = x.^2 - cos(x)')
grid on
hold on
plot(z1, noll_fun(z1), 'g*')
plot(z2, noll_fun(z2), 'g*')

%%

clear, clc;
% Uppgift 5

%linspace(x1, x2, n) där n är antalet punkter
% Standard antal är 100 punkter