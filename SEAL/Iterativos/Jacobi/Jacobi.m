function [x, r, it, t] = Jacobi(A, b, x0, maxit, tol)
    tic();
    n = length(A(1,:));
    x = x0; % Se inicializa x
    it = 0;
    while (it < maxit)
        for i = 1:n
            x(i) = (b(i) - A(i,1:i-1) * x0(1:i-1) - A(i,i+1:n) * x0(i+1:n)) / A(i,i);
        end 
        
        % Calcula el vector de residuo
        r(it+1) = norm(A * x - b);
        
        % Verifica el primer criterio de parada (diferencia entre dos iteraciones)
        %if norm(r(it+1)) < tol * norm(b)
        
        % Verifica el segundo criterio de parada (valor relativo del incremento)
        %if norm(r(it+1)) / norm(x) < tol
        
        % Verifica el tercer criterio de parada (norma del vector residuo)
        if r(it+1) < tol
            % Se detiene si se cumple la condición de parada
            break;
        end 
        
        x0 = x;
        it = it + 1;
    end
    
    t = toc();
endfunction