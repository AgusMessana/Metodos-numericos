function raiz = regula_falsi(fun, a, b, tol, iter)
     fa = fun(a);
     fb = fun(b);
     c = b - fb * (b - a) / (fb-fa);
     fc = fun(c);
     i = 0;
     while abs(fc) > tol && i < iter then
         i = i + 1;
         if fa*fc < 0 then 
             b = c;
             fb = fc;
         else 
             a = c;
             fa = fc;
         end
     c = b - fb * (b - a) / (fb-fa);
     fc = fun(c);
     end
     if (i >= iter) then 
        disp("Se alcanzo el maximo de iteraciones. La raíz no será precisa.");
     end
     disp ("Número de iteraciones: " + string(i));
     raiz = c;
endfunction
