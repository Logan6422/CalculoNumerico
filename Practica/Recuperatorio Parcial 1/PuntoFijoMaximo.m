clear all;clc;
format long;
%Polinomio
p = @(x) x - (x.^3) - (4.*x.^2) + 10;
dp = @(x) 1 - (3.*x.^2) - (8.*x);
ddp = @(x) (6.*x)-8;
func_pto_fijo = @(x) (x.^3) + (4.*x.^2) -10;

%Datos
a = -3.5;
b =  -3.1;
a2 = 1;
b2 = 2;
maxit = 5000;
tol = 1e-8;

%Grafica raiz 1
%figure(1)
%x = linspace(-10,10);
%plot(x,p(x),'b-');
%Metodo de bisccion raiz 1
%[raiz1, ~, ~, ~] = biseccion3(p, a, b, maxit, tol)

%Grafica raiz 2
%figure(2)
%x = linspace(a2,b2);
%plot(x,p(x),'r-');

%Metodo de biseccion raiz 2
%[raiz2, ~, ~, ~] = biseccion3(p, a2, b2, maxit, tol)

%Encontrar cero en derivada
%figure(2)
%d0 = 0;
%d1 = 0.5;
%x = linspace(d0,d1);
%plot(x,dp(x),'k-');
%[ceroDerivada, ~, ~, ~] = biseccion3(dp, d0, d1, maxit, tol)
%chequeo_maximo = ddp(ceroDerivada)
%Por el criterio de la primera y segunda derivada el punto ceroDerivada es un maximo local
%valor_maximo = p(ceroDerivada)


%Calculo de punto fijo
z0 = -10;
z1 = 10;
x = linspace(z0,z1);
plot(x,func_pto_fijo(x),'g-');
[PuntoFijo, ~, ~, ~] = biseccion3(func_pto_fijo, z0, z1, maxit, tol)











