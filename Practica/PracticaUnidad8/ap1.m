clear all;clc;
%Problemas termicos
%u(L) = b  ----> Dirichlet
%-K0*u'(L) = tita; -----> Newton
%-K0*u'(L) = H[u(L) - uE]; -----> Robinson


x0 = 0;
L = 3;  #Longitud de la barra
K0 = 1; #Conductividad termica de la barra

alpha = 21; #Temperatura en el extremo izquierdo
tita = 0; #Ya que el extremo derecho se encuentra aislado


%Datos

% la ED de difusiˆun es
% -K0 * u'' = f(x)
% despejando para la forma lineal
% u'' = - f(x) * 1/K0
% donde
% p(x) = 0 , q (x) = 0 , r(x) = - f(x) * 1/K0

f = @(x) [0.*x 0.*x -20.*sin(5.*(x-1)).*(1./K0)];
inter = [x0 L];
ycd = 21;
rob = [-K0 0 0];

[x,y]=dif_fin_rob(f,inter,ycd,rob,100) #Metodo de diferencias finitas con condiciones robinson

disp("a)Temperatura extremo derecho");
temp_extr_der = y(end)

disp('b)Temperatura maxima');
[m pos] = max(y);
punto_viga = x(pos)
max_temp = m

plot(x,y,'b-'); grid on; grid minor; hold on;
plot(punto_viga,max_temp,'ro')

