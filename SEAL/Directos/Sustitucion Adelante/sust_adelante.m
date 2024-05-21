  function x = sust_adelante(A,b)
  A = [A b];
  x = A(:,end);
  n = length(b);
  x(n) = A(1,n+1)/A(1,1);
  
  for i=2:n
      s = A(i,n+1);
      s = s - A(i,1:i-1) * x(1:i-1);
      x(i) = s/A(i,i);
  endfor
 endfunction
