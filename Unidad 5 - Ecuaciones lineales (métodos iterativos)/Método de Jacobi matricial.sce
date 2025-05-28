function x = jacobi_mat(A, b ,x0, eps)
    n = size(A, 1);
    D = diag(diag(A));
    inv_D = zeros(n, n);
    for i = 1:n
        inv_D(i, i) = 1/D(i, i);
    end
    I = eye(n, n)
    x = x0;
    iter = 0;
    
    while norm(A*x - b) > eps
        x = inv_D*b + (I - inv_D*A)*x;
        iter = iter + 1;
    end
    
    disp(iter);
endfunction
