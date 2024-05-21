function [x] =  diagDom(A)
  x = diag(A);
  n = length(A);
  edd = 0;
  for i=1:n
      suma(i) = (sum(A(i, :)) - x(i));
  if(suma(i) > x(i))
    disp("La matriz no es e.d.d");
    edd = 1;
    break;
   endif
  endfor
  if(edd == 0)
    disp("La matriz es e.d.d");
  endif
endfunction


#Jacobi converge para cualquier vector inicial si es diagdom
#Gauss seidel converge si es diagonaldominante
