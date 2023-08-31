clc, clear;

% Uppgift 1

A = [1, 4, 7, 10; 2, 5, 8, 11; 3, 6, 9, 12];
b = [1; 3; 5];
c = [0, 2, 4, 6, 8];

A(2, 3)
b(2)
c(3)

A(2, 3) = 15;

%%

clc, clear;

% Uppgift 2

A1 = [
    1, 5, 9;
    2, 0, 5;
    3, 7, 11;
];

b1 = [
    29;
    26;
    39;
];

% Kombinera matriser A1 och b1
E1 = [A1 b1];
% Räkna ut reducerad trappstegsform för E1
R1 = rref(E1)

A2 = [
    1, 1, 3, 4;
    -2, 2, 2, 0;
    1, 1, 2, 3;
    1, -1, -2, -1;
];

b2 = [
    2;
    -4;
    1;
    1;
];

E2 = [A2 b2];
R2 = rref(E2)

%%

clc, clear;

% Uppgift 3

A = [
    11, 4, 3, 7;
    2, 6, 8, 5;
    9, 12, 1, 10;
];

b = [
    3;
    1;
    5;
];

c = [
    4, 2, 8, 0, 6
];

[rb, kb] = size(b)
% Man kan se att b är en kolonnvektor eftersom den endast har 1 kolonn
[rc, kc] = size(c)
% Vice versa för c, det är en radvektor eftersom det endast finns 1 rad

max(A, [], "all")
min(A, [], "all")
