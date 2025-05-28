function X = deter(A)
    [nA, mA] = size(A); 
    if nA <> mA then
     error("La matriz A debe ser cuadrada");
     abort;
    end
    X=1;
    for i = 1:(nA-1) do
     for j = (i + 1):nA do
        mji = A(j, i) / A(i, i);
         A(j, i) = 0;
         A(j, (i+1):(mA)) = A(j,(i+1):(mA))-mji*A(i,(i+1):(mA));
        
     end
     X=X*A(i,i);
    end
    X=X*A(nA,nA);
endfunction
