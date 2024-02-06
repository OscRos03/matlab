x = [3;6];
t = [5;8];
v = -pi/8;

x = x + t;
R = [cos(v) -sin(v); sin(v) cos(v)];
R * x