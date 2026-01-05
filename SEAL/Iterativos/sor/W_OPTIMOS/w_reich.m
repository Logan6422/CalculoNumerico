function w = w_reich(n)
    #n = numero incognitas de matriz
    % w_reich: parametro optimo de SOR (formula de Reich)
    % Aplica a matrices tridiagonales S.P.D.

    w = 2 / (1 + sin(pi / (n + 1)));
endfunction

