clear all; clc;
format long
%y(1) = 1
%y(2) = 2

%f =@(x) [0*x 0*x-5 100*x.*(1-x)];
f = @(x) [-2./x 2./x.^2 sin(log(x))./x.^2];

%Metodo de disparo lineal
inter = [1,2];
yc = [1,2];
L = 10; %0.1
%L = 100; %0.01
[xd,yd]=disparo_lineal(f,inter,yc,L);

% calculamos la exacta:
c2 = (1/70).*(8-12.*sin(log(2)) - 4.*cos(log(2)));
c1 = (11/10)-c2;
fexacta = @(x) c1.*x + (c2./x.^2) - (3/10).*sin(log(x)) - (1/10).*cos(log(x));
xx = linspace(1,2,L+1);

fex=fexacta(xx)

%Graficas
figure(1);
plot(xd,yd,'k-*'); %Disparo lineal
hold on;
plot(xx,fex,'b-d');%Funcion Exacta
grid minor
%===============================================================================
%Calculo del error
ErrorDisparo = abs((fex'- yd));
figure(2)
semilogy(xx,ErrorDisparo,'b-*');
figure(3)
loglog(xx,ErrorDisparo,'b-*')






