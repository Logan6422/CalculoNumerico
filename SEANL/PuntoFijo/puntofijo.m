function [x, rh, it,t] = puntofijo(g, x0, kmax, tol)
  tic();
  it = 0;
  while it < kmax
    x = g(x0);
    rh(it+1) = abs(x - x0);
    %rh(it) = max(abs([fp,p-a]));
     E_rel(it)=abs((p-pold))/(abs(p)+eps);
    if rh(it+1) < tol
      break;
    endif
    
    %if(E_rel(it)<tol)
      %break;
    %endif
    
    %if(f(p) < tol)
       %  break
       %endif
    
    x0 = x;
    it++;
  endwhile
  t = toc();
endfunction