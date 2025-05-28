function [L, U] = fact_doolittle(A)
    [mA, nA] = size(A);
    if mA <> nA then
        error("La matriz A debe ser cuadrada.");
        abort;
    end
    
    L = eye(mA, mA);    
    U = zeros(mA, mA);
    
    for i = 1:mA
        if i > 1 then
            U(i, :) = A(i, :) - L(i, 1:i-1) * U(1:i-1, :); 
            L(i+1:mA, i) = (A(i+1:mA, i) - L(i+1:mA, 1:i-1) * U(1:i-1, i)) / U(i, i);
        else
            U(i, :) = A(i, :);
            L(i+1:mA, i) = A(i+1:mA, i) / U(i, i);
        end
    end
endfunction
