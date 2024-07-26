function [A,L,U,r,P] = doolitleLU(A)%doolitleLU(A,b)%[A,L,U,r,x]
    n = length(A(1,:));
    r = 1:n;  
    epsilon = 1e-9;
   for k=1: n-1      
     [pmax,p] = max(abs(A(r(k:n),k)));
      if(pmax < epsilon)
        disp("los posible pivots son CERO")
        break
       endif  
        p = p(1)+k-1;
      if p != k
        r([p k])=r([k p]);
      endif
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - (A(k+1:n,k)/A(k,k))*A(k,k+1:n);    
    endfor
    L = eye(n) + tril(A(r,1:n),-1);
    U = triu(A(r,1:n),0);
    %y = sust_adelante(L,b);
    %x = sust_atras(U,y);
    
    P = matrizP(r);
 endfunction