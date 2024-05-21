function [x] = simDefPos(A)
    autovalores = eig(A); 
    if(all(autovalores>0))
        disp("La matriz es simetrica definida positiva");
    else
       disp("La matriz no es simetrica definida positiva");
    endif
 endfunction
 
 #Gauss seidel converge
 