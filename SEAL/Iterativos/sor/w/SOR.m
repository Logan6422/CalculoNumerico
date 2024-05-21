function [u, rh, it, t] = SOR(A, b, u0, maxit, tol, w)
    tic();
    n = length(A(1,:));
    u = u0; % Se inicializa u
    it = 0;
    while (it < maxit)
        for i = 1:n
            u(i) = (1 - w) * u0(i) + w * (b(i) - A(i,1:i-1) * u(1:i-1) - A(i,i+1:n) * u0(i+1:n)) / A(i,i);
        end 
        
        % Calcula el vector de residuo
        rh(it + 1) = norm(A * u - b);
        
        % Verifica el primer criterio de parada (diferencia entre dos iteraciones)
        %if rh(it + 1) < tol * norm(b)
        
        % Verifica el segundo criterio de parada (valor relativo del incremento)
        %if rh(it + 1) / norm(u) < tol
        
        % Verifica el tercer criterio de parada (norma del vector residuo)
        if rh(it + 1) < tol
            % Se detiene si se cumple la condición de parada
            break;
        end 
        
        u0 = u;
        it = it + 1;
    end 
    
    t = toc();
endfunction
