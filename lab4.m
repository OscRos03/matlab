clear, clc

format long
% Uppgift 2
tot = 0;
j = 0;

while abs(tot * 4 - pi) > 0.000009
    tot = tot + ((-1) .^ j) / (2 .* j + 1);
    j = j + 1;

end

tot
j