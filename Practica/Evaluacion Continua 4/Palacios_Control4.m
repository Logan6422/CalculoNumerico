#Convertimos la ecuacion en un sitema de EDO de primer orden usando sustitucion de variables
#q1 = q
#q2 = q'
#q3 = - q2 - sin(q1) + 20(cosq1)^2

f = @(t,q) [q(2); - q(2) - sin(q(1)) + 20.*(cos(q(1))).^2];

inter = [0 6];
q0 = [pi/2,0];
L = 80;

[t,fq]=rk4(f, inter, q0, L);
%Angulo al que tiende  1.3481// 77.24 grados
 
t(37); %t = 4.5
fq(37);  %1.3689 (Angulo en t = 4.5)

%duplico el L para comprobar las cifras
  for i=1:10
  disp(['Resultado para L = ',num2str(L)]);
  [t,fq]=rk4(f, inter, q0, L);
  t
  fq
  L = L*2;
endfor


%Grafica de q
plot(t,fq(:,1),'b-');
%(pendiente cambia de direccion 6 veces)
hold on;
%grafica derivada de q
%derivada cambia de direccion 6 veces)
plot(t,fq(:,2),'r-');
grid on;
 

