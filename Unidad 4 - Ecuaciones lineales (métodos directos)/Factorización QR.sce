function [Q, R] = fact_qr(A)
    [nA,mA] = size(A)
    Q = zeros(nA, mA);
    R = zeros(mA, mA);
    
    Q(:, 1) = A(:, 1)/norm(A(:, 1));
    
    for k = 1:mA
        suma = 0;
        for i = 1:k-1
            suma = suma + (A(:,k)'*Q(:,i))*Q(:,i);
        end
        vk = norm(A(:,k) - suma);
        Q(:,k) = (A(:,k) - suma) / vk;
        R(k,k) = vk;
        R(k, k+1:mA) =(A(:,k+1:mA)' * Q(:, k))';
    end
endfunction
