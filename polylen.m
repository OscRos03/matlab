function L = polylen(x, y)
    L = 0;
    if size(x, 2) == size(y, 2)
        for i=1:size(x, 2)
            L = L + sqrt(x(i).^2 + y(i).^2);
        end
    else
        error('x och y är inte lika långa')
    end
end