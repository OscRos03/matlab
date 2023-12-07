n = 50;

x = linspace(0, 3, n);

sum = 0;

for i = 1:n
    k = 3/n;
    sum = sum + x .* cos(x);
end

sum