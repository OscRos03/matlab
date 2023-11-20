function q=min_integral(f,I,n,k)
% min_integral - beräknar integralen av f(x) på intervallet I.
%
%   Syntax:
%           q =  min_integral(f,I,n,k)
%   Argument:
%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f = @(x)sin(x.^2)
%           I   - 1x2 matris, anger ett intervall I=[a b]
%           n   - positivt heltal, steglängden ges av: h=(b-a)/n där n är antalet delintervall.
%           k   - kvadraturmetod
%   Returnerar:
%           q - ett tal
%   Beskrivning:
%           Programmet beräknar ett approximativt värde på integralen
%           av f(x) över intervallet I med antingen rektangelmetoden vänster (k=1),
%           rektangelmetoden höger (k=2), mittpunktsmetoden (k=3) eller 
%           trapetsmetoden (k=4).
%   Exempel:
%           q=min_integral(@cos,[0, pi/2],100,2)

    if (k == 0)
        % Vänster rektangel
        x = linspace(I(1), I(2), n);
        h = (I(2) - I(1)) / n;
        g = f(x(1:n));
        q = sum(h*g);
    elseif (k == 1)
        % Mittpunktsmetoden
        x = linspace(I(1), I(2), n + 1);
        w = (I(2) - I(1)) ./ n;
        h = f(x(1:n)+w/2);
        q = sum(w*h);
    elseif (k == 2)
        % Trappetsmetod
        w = (I(2) - I(1)) / n;
        p = 0;
        for i = 1:n
            x = I(1) + i * w;
            x2 = I(1) + (i-1) * w;
            p = p + (w * (f(x2) + f(x)))/2;
        end
        q = p;
    end
end