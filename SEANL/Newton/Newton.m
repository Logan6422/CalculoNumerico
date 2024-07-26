function [x,rh,it,t] = Newton(f,df,x0,kmax,tol)
tic();
it = 0;
fx=f(x0);
while it < kmax
  it++;
    x = x0 -(fx/df(x0));
    #fx0 = f(x0);
    fx = f(x);
    abs(fx);
    %rh(it) = max([abs(fx), abs((x-x0)/x)])
    rh(it) = abs((x-x0)/x)
    %rh(it) = abs((x-x0));
   %E_rela = 2*err/(abs(x)+tol);
    if rh(it) < tol*abs(x)
      break;
    endif
    
    %if(E_rel(it)<tol)
      %break;
    %endif
    
    %if(f(p) < tol)
       %  break
       %endif
    
    
    x0 = x;
    
endwhile
t =toc();
endfunction

%La funcion tiene un cero si y solo si f(p) = 0 y f'(p) != 0