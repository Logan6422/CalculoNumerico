function [x] = gauss1(A,b)
    A = [A b];
    n = length(b); %Largo vertical
    
    for k=1:n-1  %Recorre los pivotes
      for i = k+1:n %Recorre las filas desde n+1
           m = A(i,k)/A(k,k); %Se calcula el valor M el cual es el valor del primer elemento de la fila inferior
                                        %al pivote dividido el pivote.
           A(i,k) = 0;             %Se hace cero el valor a la izquierda del pivote                                 
           for j = k+1:n+1; %Recorre las columnas hasta el vector b
                A(i,j)= A(i,j) - m*A(k,j); %Se resta a cada elemento a la derecha del pivote el factor m por el valor de la fila superior
          endfor
        endfor
      endfor
    
    if(A(n,n) ==0) 
      disp("no hay sol. unica");
    endif
    
 x = sust_atras(A,b);
 endfunction
 