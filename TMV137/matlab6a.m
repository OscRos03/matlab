clear, clc;
format long;
n = 1;
a = 0;
f = @(x)1./x;

while a < (12.3 - 0.577)
    a = 0;
    for k = 1:n 
        a = a + 1/k;
    end
    n = n + 1;
end

n - 1