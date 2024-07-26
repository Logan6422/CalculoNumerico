clear all;clc;
%Datos
a = 3;
b = 2;
f = @(t) [a.*cos(t); b.*sin(t)];
df1 = @(t) -a.*sin(t);
df2 = @(t) b.*cos(t);
L = 10;
n = 5;

%Integral
int = @(t) sqrt((df1(t).^2)+(df2(t).^2));
resultado = intNCcompuesta(int,0,2.*pi,L,n)

for i=1:10
  disp(['Resultado para L = ',num2str(L)]);
  resultado = intNCcompuesta(int,0,2.*pi,L,n)
  L=L*2;
endfor

L = 5;
n = 2;

%Calculo de integral mediante cuadratura de Gauss
QGauss=cuad_gauss_c(int,0,2*pi,L,n)
