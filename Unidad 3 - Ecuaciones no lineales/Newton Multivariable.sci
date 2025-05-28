function jac = jacobiana(fn, val, h) //fn(función), xy(vector de valores iniciales), h(valor para derivadas)
    n = length(val);
    jac = zeros(n, n);
    i = 1;
    while i <= n
        valh = val;
        valh(i) = valh(i) + h;
        jac(:, i) = (fn(valh) - fn(val)) / h;
        i = i + 1;
    end
endfunction

function raiz = newton_multi(fn, val, n, h)
    valn = val;
    i = 1;
    while i <= n
        jac = jacobiana(fn, valn, h);
        jac_inv = inv(jac);
        y = valn - jac_inv * fn(valn);
        valn = y;
        i = i + 1;
    end
    raiz = valn;
endfunction


/*Function f = Sistema(v)
  > x = v(1)
  > y = v(2)
  > f = [x^2 + x*y^3 - 9; 3*x^2*y - 4 - y^3];
> Endfunction

h=1e-6;
n = 5 (iteraciones)
> xy0=[1.2;2.5] (valores iniciales) )*/
