clear, clc

% Uppgift 1

x = [4, 3, 4];
y = [2, 9, 2];

omkrets = polylen(x, y)

%%

clear, clc
format long

% Uppgift 2

tot = 0;
j = 0;

while fix((tot * 4) * 100000) - fix(pi * 100000) ~= 0
    tot = tot + ((-1) .^ j) / (2 .* j + 1);
    j = j + 1;
end

tot * 4
j

%%

clear, clc
hold on

% Uppgift 3

[x, y] = ginput;
x(size(x, 1) + 1) = x(1);
y(size(y, 1) + 1) = y(1);
fill(x, y, 'g')