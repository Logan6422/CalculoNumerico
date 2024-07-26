function x = gaussVerif(A,b)
      % Verificar la primera condición
    for i = 1:size(A, 1)
        if A(i, i) ~= 1
            disp('La matriz no está en forma escalonada reducida por filas (gaussiana).');
            return;
        end
    end

    % Verificar la segunda condición
    for i = 2:size(A, 1)
        for j = 1:i-1
            if A(i, j) ~= 0
                disp('La matriz no está en forma escalonada reducida por filas (gaussiana).');
                return;
            end
        end
    end

    disp('La matriz está en forma escalonada reducida por filas (gaussiana).');
  endfunction