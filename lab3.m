clear, clc;

% Uppgift 1
x = linspace(-pi/2 + 0.01, pi/2 + 0.01);
plot(x, tan(x))

% Eftersom tan(pi/2) är odefinierat

%%

clear, clc;

% Uppgift 2

x = linspace(0, 8);
y = x - x.*cos(7.*x);
plot(x, y)

%%

clear, clc;

% Uppgift 3

x = linspace(0, 14);
plot([0 14], [0, 0], 'green')
hold on

plot(x, kastbana(x, 15)), text(6.4, 1.6, '15^o')
plot(x, kastbana(x, 30)), text(6.4, 3.2, '30^o')
plot(x, kastbana(x, 45)), text(6.4, 4.6, '45^o')
hold off

title('Kastbana med v_o = 10m/s och olika \theta')
xlabel('x')
ylabel('y(x)')
axis equal, axis([0 14 -2 6])

% För att göra funktionen mer lättläslig och lättare att redigera.

%%

clear, clc;

% Uppgift 4

t = linspace(0, 2 * pi);

hold on
subplot(1, 2, 1)
plot(cos(t)+cos(3 * t), sin(2 * t), 'green')
axis equal
subplot(1, 2, 2)
plot(cos(t)+cos(4 * t), sin(2 * t), 'red')
axis equal
hold off

%%

clear, clc;
theta = linspace(0, 2 * pi);
s = sqrt(2) / 2;
x = [s, s, -s, -s, s];
y = [s, -s, -s, s, s];

hold on
plot(cos(theta), sin(theta), 'g')
fill(cos(theta), sin(theta), 'g')
plot(x, y, 'y-')
fill(x, y, 'y')
axis equal

