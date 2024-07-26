%PVI
%q1 = q;
%q2 = q';
%q3 = q'' = (20.*(cos(q1)).^2) - sin(q1) - q2;

%Datos
L = 200;
q0 = [pi/2,0];
f = @(t,q) [q(2); (20.*(cos(q(1))).^2) - sin(q(1)) - q(2)];
inter = [0,6];

%Metodo de euler para resolver el PVI
[t,y]=rk4(f, inter, q0, L);
t(151)
y(151,1)
y(151,2) %Se mueve de derecha izquierda (velocidad negativa)

%duplico el L para comprobar las cifras
%for i=1:10
%  disp(['Resultado para L = ',num2str(L)]);
%  [t,y]=rk4(f, inter, q0, L);
%  t
%  y
%  L = L*2;
%endfor

%Grafica
%plot(t,y(:,1),'b-');
%figure(2)
%plot(t,y(:,2),'r-');
%Pendulo cambia de direccion 5 veces (5 ceros en la velocidad)
