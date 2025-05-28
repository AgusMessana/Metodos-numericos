//Regla de Simpson
function w = simpson(f, a, b)
    h = (b - a)/2;
    c = a + h;
    
    w = (f(a) + 4*f(c) + f(b)) * h/3;
endfunction

//Regla de Simpson compuesta
function w = simpson_comp(f, a, b, n)
    h = (b - a)/n;
    w = f(a) + f(b);
    for i = 1 : n-1
        x = a + h*i;
        if modulo(i, 2) == 0 then
            w = w + 2*f(x);
        else
            w = w + 4*f(x);
        end
    end
    w = w*h/3;
endfunction

function y = f(x)
    y = exp(x)*sin(x);
endfunction
