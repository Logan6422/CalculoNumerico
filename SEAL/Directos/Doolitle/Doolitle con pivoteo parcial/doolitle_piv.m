function [A,r] = doolitle_piv(A)
    n = length(A);  
    r = 1:n;  
    epsilon = 1e-9;
   for k=1: n-1      
     [pmax,p] = max(abs(A(r(k:n),k)));
      if(pmax < epsilon)
        disp("los posible pivots son CERO")
        break
       endif  
        p = p+k-1;
      if p ~= k
        r([p k])=r([k p]);
      endif
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - (A(k+1:n,k)/A(k,k))*A(k,k+1:n);    
    endfor
 endfunction