clear all;clc;

%Despejando la funcion obtenemos los parametros:
%(x^2/3^2)+(y^2/2^2) = 1 ----> a = 3 y b =2;
a = 3;
b =2;

%Funciones
a_t = @(t) [a.*cos(t); b.*sin(t)];
d_a1 =@(t) -a.*sin(t);
d_a2 =@(t) b.*cos(t);
integral = @(t) sqrt((d_a1(t).^2)+(d_a2(t).^2));

L = 10;
n = 5;
%Calculo
for i=1:10
  disp(['Resultado para L = ',num2str(L)]);
  QNewton = intNCcompuesta(integral,0,2.*pi,L,n)
  L=L*2;
endfor


L = 5;
n = 2;
%Calculo de integral mediante cuadratura de Gauss
QGauss=cuad_gauss_c(integral,0,2*pi,L,n)
