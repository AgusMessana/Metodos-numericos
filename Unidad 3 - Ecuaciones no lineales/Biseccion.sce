function raiz = biseccion(fun, a, b, tol)
    fa = fun(a);
    fb = fun(b);
    if fa*fb > 0 then
        error("Las imágenes de los puntos no tienen signos opuestos.");
    end
    c = (a + b) / 2;
    fc = fun(c);
    i = 0
    delta = b - c;
    while abs(delta) > tol 
        if fa*fc < 0 then 
            b = c;
            fb = fc;
        else 
            a = c;
            fa = fc;
        end
        c = (a + b) / 2;
        fc = fun(c)
        delta = b - c;
        i = i + 1;
    end
    disp("Número de iteraciones: " + string(i));
    raiz = c;
endfunction
