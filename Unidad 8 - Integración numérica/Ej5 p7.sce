funcprot(0);
//Ejercicio 5
function v = TnExt(f, a, b, c, d)
    h = (b - a)*(d - c)/4;
    v = h * (f(c, a) + f(c, b) + f(d, a) + f(d, b));
    
    // Hacerlo con división de puntos en el intervalo!!!!!!
endfunction

//Ejercicio 6
function v = Tn(fx, a, b, n)
    h = (b - a)/n;
    v = (fx(a)/2) + (fx(b)/2);
    for i = 1 : n-1
        xi = a + i*h;
        v = v + fx(xi);
    end
    v = h*v;
endfunction

function v = DobleTn(f, a, b, c, d, n, m) // c y d son funciones, n(ab) m(cd)
    h = (b - a)/n;
    deff("z = fxa(y)", "z = f("+string(a)+", y)");
    deff("z = fxb(y)", "z = f("+string(b)+", y)");
    v = Tn(fxa, c(a), d(a), m)/2 + Tn(fxb, c(b), d(b), m)/2;
    for i = 1 : n-1
        xi = a + i*h;
        deff("z = fxi(y)", "z = f("+string(xi)+", y)");
        v = v + Tn(fxi, c(xi), d(xi), m);
    end
    v = h * v;
endfunction

function v = uno(x, y)
    v = 1;
endfunction

function y = cx(x)
    y = -sqrt(2*x - x^2);
endfunction

function y = dx(x)
    y = sqrt(2*x - x^2);
endfunction
