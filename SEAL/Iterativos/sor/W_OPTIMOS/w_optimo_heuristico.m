function [y] = w_optimo_heuristico(A,b,x0,maxit,tol,w_min,w_max,div)

  if (w_min <= 0 || w_max >= 2)
    y = NaN;
    printf("Elegir w_min y w_max en el intervalo (0,2)\n");
    return
  endif

  w = linspace(w_min, w_max, div);
  it_SOR = Inf(1,length(w));

  for j = 1:length(w)
    [~,~,it,~] = SOR(A,b,x0,maxit,tol,w(j));

    if it < maxit     % solo si converge
      it_SOR(j) = it;
    endif
  endfor

  [~,p] = min(it_SOR);

  if isinf(it_SOR(p))
    y = NaN;
    disp("No se encontro ningun w que haga converger SOR");
  else
    y = w(p);
  endif

endfunction

