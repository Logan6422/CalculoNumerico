function A = doolitle(A)
    n = length(A);     %calcula tamano de A
   for k=1: n-1         %recorre pivotes
      for i=k+1:n       %recorre filas
        m = A(i,k)/A(k,k);  %guarda el factor m 
        A(i,k) = m;             %lo reemplaza en los valores bajo la diagonal principal
          for j=k+1:n  %recorre columnas
              A(i,j) = A(i,j) - m*A(k,j);    %realiza eliminacion gaussiana
          endfor
       endfor
    endfor
  endfunction