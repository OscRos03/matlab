clear, clc

syms x y z
eqn1 = x + y - 3 * z == 9;
eqn2 = 4 * x + 3 * y - 3 * z == 11;
eqn3 = 3 * x - y - z == 11;

[A, B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z]);
linsolve(A, B)