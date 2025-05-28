function [L, U, P] = fact_LU(A)
    [m, n] = size(A);
    if m <> n then
        error("La matriz A debe ser cuadrada.");
        abort;
    end
    
    U = A;
    L = eye(n, n);
    P = eye(n, n);
    
    for k = 1:m-1
        // Selección del pivote y permutación de filas
        [Amax, i] = max(abs(U(k:m, k)));
        i = i + k - 1;
        
        if i <> k then
            U([k, i], k:m) = U([i, k], k:m);  // Intercambio en U
            P([k, i], :) = P([i, k], :);      // Intercambio en P
            L([k, i], 1:k-1) = L([i, k], 1:k-1);  // Intercambio en L, solo en columnas previas
        end
        
        // Actualización de L y U usando submatrices
        L(k+1:m, k) = U(k+1:m, k) / U(k, k);
        U(k+1:m, k+1:m) = U(k+1:m, k+1:m) - L(k+1:m, k) * U(k, k+1:m);
        U(k+1:m, k) = 0;  // Asegura que el valor debajo del pivote en U sea cero
    end
endfunction
