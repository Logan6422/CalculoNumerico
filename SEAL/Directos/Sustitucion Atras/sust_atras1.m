function x = sust_atras1(A,b)
  A = [A b];
  x = A(:,end); %Necesario para que x sea columna
  n = length(x);
  x(n) = A(n,n+1)/A(n,n); %calcula el primer resultado de la ultima fila despejando el coeficiente de xn y lo guarda en un vector
 
 for i = n-1:-1:1  %de abajo hacia arriba
    s =   A(i,n+1);  %guarda el valor de b en la fila correspondiente
    for j = i+1:n
     s = s - A(i,j) * x(j);  %
    endfor
    x(i) = s/A(i,i);
  endfor
