clear all;clc;
%Datos
f = @(x) [-2./x 2./x.^2 sin(log(x))./x.^2];
inter = [1,2];
ycd = 1; %Alpha
rob = [0 1 2]; %Se pasa contorno izq A y B
L = 10;

disp('La condicion de contorno en el extremo derecho es y(2) = 2');
disp('La ecuacion diferencial es de la forma A*y`(b) + b*y(b) = C');
disp('Por lo tanto los coeficientes son: (0)*y`(b) + 1*y(b) = 2');

%Metodo de diferencias finitas
[x,y]=dif_fin_rob(f,inter,ycd,rob,L)
