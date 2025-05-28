function raiz = punto_fijo(fun, a, tol, iter)
    b = a;
    i = 0;
    while abs(fun(b) - b) > tol && i < iter
        c = fun(b);
        b = c;
        i = i + 1;
    end
    if i >= iter then
        disp("Se alcanzo el maximo de iteraciones. El punto fijo no será preciso");
    end
     disp ("Número de iteraciones: " + string(i));
     raiz = b;
endfunction
