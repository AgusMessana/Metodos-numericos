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

// Función a integrar
function y = f(x)
    y = sin(x)/x;
endfunction

function w = aprox_si(b, n)
    w = trapecio_comp(f, 1, b, n);
endfunction
