function w = w_optimo_SOR(A)
    M = diag(diag(A));
    TJ = eye(size(A)) - M\A;
    rho = max(abs(eig(TJ)));

    if rho >= 1
        error("Jacobi no converge: ω óptimo no existe");
    endif

    w = 2 / (1 + sqrt(1 - rho^2));
endfunction

#si la matriz es s.d.p y jacobi converge entonces hay w optimo
#si no es s.d.p ni e.d.d heuristico
