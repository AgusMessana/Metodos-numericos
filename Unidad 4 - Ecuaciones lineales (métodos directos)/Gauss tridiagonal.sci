function [x,a] = gauss_tri(A, b)
    [nA,mA] = size(A);
    [nb,mb] = size(b);
    if nA<>mA then 
        error("La matriz A debe ser cuadrada");
        abort;
    elseif mA<>nb then 
        error("Dimensiones incompatibles entre A y b");
        abort;
    end
    
    a = [A b];
    n = nA;
    contador = 0;

    for k=1:n-1 do
        mkk=a(k+1,k)/a(k,k);
        a(k+1,k+1)=a(k+1,k+1)-mkk*a(k,k+1);
        a(k+1,n+1)=a(k+1,n+1)-mkk*a(k,n+1);
        contador=contador+5;
    end

    x(n)=a(n,n+1)/a(n,n);
    contador=contador+1;
    for k=n-1:-1:1 do
        x(k)=(a(k,n+1)-a(k,k+1)*x(k+1))/a(k,k);
        contador=contador+3;
    end
    disp(contador);
endfunction
