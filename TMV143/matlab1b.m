% 4 * u1 - u2 - u4              = 28

% 4 * u2 - u1 - u5 - u3         = 28

% 4 * u3 - u2 - u6              = 105

% 4 * u4 - u7 - u5 - u1         = 0

% 4 * u5 - u4 - u8 - u6 - u2    = 0

% 4 * u6 - u5 - u9 - u3         = 77

% 4 * u7 - u8 - u4              = 63

% 4 * u8 - u7 - u9 - u5         = 63

% 4 * u9 - u8 - u6              = 140

A = [
    4   -1  0   -1  0   0   0   0   0
    -1  4   -1  0   -1  0   0   0   0
    0   -1  4   0   0   -1  0   0   0
    -1  0   0   4   -1  0   -1  0   0
    0   -1  0   -1  4   -1  0   -1  0
    0   0   -1  0   -1  4   0   0   -1
    0   0   0   -1  0   0   4   -1  0
    0   0   0   0   -1  0   -1  4   -1
    0   0   0   0   0   -1  0   -1  4
];

b = [
    28
    28
    105
    0
    0
    77
    63
    63
    140
];

u = mldivide(A,b)