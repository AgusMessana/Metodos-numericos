//Regla del trapecio
function w = trapecio(f, a, b)
    w = (f(a) + f(b)) * (b - a) / 2;
endfunction

//Regla del trapecio compuesto
function w = trapecio_comp(f, a, b, n) //n = cant. de intervalos
    h = (b - a)/n; //longitud de cada intervalo
    w = (f(a) + f(b))/2;
    for (i = 1 : n-1)
        x = a + h*i;
        w = w + f(x);
    end
    w = w*h;
endfunction

function y = f(x)
    y = 1/x;
endfunction
