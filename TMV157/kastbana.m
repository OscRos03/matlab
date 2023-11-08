% function 'return' = 'name'('params')
function y = kastbana(x, theta)
    t = theta * pi / 180; % Theta i grader, t i radianer 
    v0 = 10;
    y0 = 1.85;
    g = 9.81;
    a = g / (2 * v0 ^ 2 * cos(t) ^ 2);
    b = v0 ^ 2 * sin(2 * t) / (2 * g);
    c = v0 ^ 2 * sin(t) ^ 2 / (2 * g);
    y = y0 - a .* ( x - b) .^ 2 + c;
end