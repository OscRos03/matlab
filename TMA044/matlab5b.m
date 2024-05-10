clear
clc
clf
hold on


x = linspace(7, 14, 30);
y = linspace(5, 12, 30);

f = @(x, y) x.^2 + y.^2;

[X, Y] = meshgrid(x, y);
Z = f(X, Y);
surf(x, y, Z)

I = 28028/3;

%%

x = linspace(7, 14, 18+1);
dx = x(2) - x(1);
y = linspace(5, 12, 12+1);
dy = y(2) - y(1);
A = dy * dx;

vol = 0;
for i = 1:size(x,2) -1
    for j = 1:size(y,2) -1
        xi = x(i);
        xidx = xi + dx;
        yj = y(j);
        yjdy = yj + dy;
        z1 = f(xi,yj);
        plot3(xi, yj, z1, 'ro');
        z2 = f(xi, yjdy);
        plot3(xi, yjdy, z2, 'ro');
        z3 = f(xidx, yj);
        plot3(xidx, yj, z3, 'ro');
        z4 = f(xidx, yjdy);
        plot3(xidx, yjdy, z4, 'ro');
        z = (z1 + z2 + z3 + z4)/4;
        
        fill3([xi xidx xidx xi], [yj yj yjdy yjdy], [z z z z], 'r')
        vol = vol + z * A;
    end
end
abs(vol-I)

%%

x = linspace(7, 14, (18*2)+1);
dx = x(2) - x(1);
y = linspace(5, 12, (12*2)+1);
dy = y(2) - y(1);
A = dy * dx;

vol = 0;
for i = 1:size(x,2) -1
    for j = 1:size(y,2) -1
        xi = x(i);
        xidx = xi + dx;
        yj = y(j);
        yjdy = yj + dy;
        z1 = f(xi,yj);
        plot3(xi, yj, z1, 'ro');
        z2 = f(xi, yjdy);
        plot3(xi, yjdy, z2, 'ro');
        z3 = f(xidx, yj);
        plot3(xidx, yj, z3, 'ro');
        z4 = f(xidx, yjdy);
        plot3(xidx, yjdy, z4, 'ro');
        z = (z1 + z2 + z3 + z4)/4;
        
        fill3([xi xidx xidx xi], [yj yj yjdy yjdy], [z z z z], 'r')
        vol = vol + z * A;
    end
end
abs(vol-I)

%%

x = linspace(7, 14, (18*(2^2))+1);
dx = x(2) - x(1);
y = linspace(5, 12, (12*(2^2))+1);
dy = y(2) - y(1);
A = dy * dx;

vol = 0;
for i = 1:size(x,2) -1
    for j = 1:size(y,2) -1
        xi = x(i);
        xidx = xi + dx;
        yj = y(j);
        yjdy = yj + dy;
        z1 = f(xi,yj);
        plot3(xi, yj, z1, 'ro');
        z2 = f(xi, yjdy);
        plot3(xi, yjdy, z2, 'ro');
        z3 = f(xidx, yj);
        plot3(xidx, yj, z3, 'ro');
        z4 = f(xidx, yjdy);
        plot3(xidx, yjdy, z4, 'ro');
        z = (z1 + z2 + z3 + z4)/4;
        
        fill3([xi xidx xidx xi], [yj yj yjdy yjdy], [z z z z], 'r')
        vol = vol + z * A;
    end
end
abs(vol-I)

%%

x = linspace(7, 14, (18*(2^3))+1);
dx = x(2) - x(1);
y = linspace(5, 12, (12*(2^3))+1);
dy = y(2) - y(1);
A = dy * dx;

vol = 0;
for i = 1:size(x,2) -1
    for j = 1:size(y,2) -1
        xi = x(i);
        xidx = xi + dx;
        yj = y(j);
        yjdy = yj + dy;
        z1 = f(xi,yj);
        plot3(xi, yj, z1, 'ro');
        z2 = f(xi, yjdy);
        plot3(xi, yjdy, z2, 'ro');
        z3 = f(xidx, yj);
        plot3(xidx, yj, z3, 'ro');
        z4 = f(xidx, yjdy);
        plot3(xidx, yjdy, z4, 'ro');
        z = (z1 + z2 + z3 + z4)/4;
        
        fill3([xi xidx xidx xi], [yj yj yjdy yjdy], [z z z z], 'r')
        vol = vol + z * A;
    end
end
abs(vol-I)