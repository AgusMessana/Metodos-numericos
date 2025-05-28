function salida = newton(fun, a, tol, iter, h)
    i = 0;
    fa = fun(a)
    dfa = (fun(a + h) - fa) / h;
    b = a - fa / dfa
    delta = abs(b - a)
    while delta > tol && i < iter
        i = i + 1;
        a = b;
        fa = fun(a)
        dfa = (fun(a + h) - fa) / h;
        b = a - fa / dfa
        delta = abs(b - a)
    end
    if delta > tol then 
        disp("Se alcanzo el maximo de iteraciones. La raíz no será precisa.");
    end
    disp("Número de iteraciones: " + string(i));
    salida = b;
endfunction
