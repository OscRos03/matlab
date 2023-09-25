function r = min_bisect(f, I, tol)
    a = I(1);
    b = I(2);
    m = (a + b)/2;

    if (f(a) .* f(b) > 0)
        disp("Fel: Funktionen växlar inte tecken i intervallet")
        return
    end

    while abs(f(m)) > tol
        m = (a + b)/2;
        if (f(a) .* f(m) < 0)
            b = m;
        else
            a = m;
        end
    end

    r = m;