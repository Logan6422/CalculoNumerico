
function [w] = w_optimo_SOR(A)
M = diag(diag(A));
G = diag(ones(length(A),1))-inv(M)*A;
w = 2 / (1 + sqrt(1 - (max(eig(G)))^2));
endfunction

#si w = 1 --> Gauss-Seidel
#si radio espectarl de la matriz T es < 1 Sor converge
#si 0<w<1 entones sub-relajacion
#si 1<w<2 entonces sobre-relajacion