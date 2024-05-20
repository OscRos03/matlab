clear
u = linspace(-pi, pi, 30);
v = linspace(-pi, pi, 30);
[U, V] = meshgrid(u, v);

x = 3 .* cos(U);
y = 3 .* sin(U) + cos(V);
z = sin(V);

%%
clear
u = linspace(0, 2.*pi, 30);
v = linspace(0, pi, 30);
[U, V] = meshgrid(u, v);

x = (1.5 + cos(V)) .* cos(U);
y = (1.5 + cos(V)) .* sin(U);
z = 1 - sin(V);

%%
clear
u = linspace(-pi, pi, 30);
v = linspace(-pi./2, pi./2, 30);
[U, V] = meshgrid(u, v);

x = (10 + cos(4 .* U .* V)) .* cos(U) .* cos(V);
y = (10 + cos(4 .* U .* V)) .* sin(U) .* cos(V);
z = (10 + cos(4 .* U .* V)) .* sin(V);

%%

clc
clf
hold on

surf(x,y,z)
grid on
axis equal
xlabel('x'), ylabel('y'), zlabel('z','rotation',0)