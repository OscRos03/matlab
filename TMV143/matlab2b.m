format short

v = 100;

A = [
    1   0   0
    0   cosd(v)  -sind(v)
    0   sind(v)  cosd(v)
];

S = [
    2   0   0
    0   3.5 0
    0   0   4
];

S * A