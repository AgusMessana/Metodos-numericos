function [U,ind] = fact_cholesky(A)
    eps = 1.0e-8;
    n = size(A,1);
    U = zeros(n,n);

    t = A(1,1);
    if t <= eps then
        printf("Matriz no definida positiva.");
        ind = 0;
        return;
    end
    U(1,1) = sqrt(t);
    for j = 2:n
        U(1,j) = A(1,j)/U(1,1);
    end
    
    for k = 2:n
        t = A(k,k) - U(1:k-1,k)'*U(1:k-1,k);
        if t <= eps then
            printf("Matriz no definida positiva.");
            ind = 0;
            return;
        end
        U(k,k) = sqrt(t);
        for j = k+1:n
            U(k,j) = ( A(k,j) - U(1:k-1,k)'*U(1:k-1,j) )/U(k,k);
        end
    end
    ind = 1;
endfunction
