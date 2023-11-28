clear, clc

[T, Y] = meshgrid(0:0.25:3, -1:0.16:1);

% S = -Y + sin(4 * T) + cos(3 * T);
% S = -Y - sin(T);
S = 3 * Y - sin(T);
%S = -Y + sin(3 * T) + cos(4 * T);

L = sqrt(1 + S.^2);
quiver(T, Y, 1./L, S./L, 0.45)
axis tight