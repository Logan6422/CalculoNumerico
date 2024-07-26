function [p, rh, it, E_rel,tiempo] = biseccion3(f, a, b, maxit, tol)
% calculo con Error relativo.
  tic()
  fa = f(a);
  fb = f(b);
  if sign(fa)*sign(fb) > 0
    error('No se cumple la regla de los signos y el Teorema valor intermedio');
  endif
   it = 0;
   p=a; % Definimos un primer valor de p
  while (it < maxit)
    it++;
    pold=p;
    p = a + (b-a)/2; % calculamos p_i
    fp = f(p);
    %E_rel(it)=abs((p-pold)/(p+eps));
    
    if (sign(fp)*sign(fb)<0)
      rh(it) = max(abs([fp,b-p]));
      E_rel(it)=abs((p-pold))/(abs(p)+eps);
      fa = fp;
      a = p;
    else
      rh(it) = max(abs([fp,p-a]));
      E_rel(it)=abs((p-pold))/(abs(p)+eps);
      fb = fp;
      b=p;
    endif
    %pold=p;
    
   % if(rh(it)<tol)
    %  break;
    %endif
    
    if(E_rel(it)<tol)
      break;
    endif
    
    %if(f(p) < tol)
       %  break
       %endif
  endwhile
  tiempo = toc();
       
endfunction



#Analizar funcion
#Cantidad/multiplicidad/intervalo buscado/buen valor inicial/ forma de la curva en proximidades del cero.

%SI la dervada es muy chica cerca del cero entonces el error es el mejor criterio de parada
%Si la funcion tiene derivadas grandes en las roimidades de cero f(p) es mejor criterio
%