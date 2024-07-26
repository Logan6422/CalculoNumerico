format short
%Polinomio
pol = @(x) 230.*x.^4 + 18.*x.^3 + 9.*x.^2 - 222.*x - 9;

%Grafica
figure(1);
a = -10;
b =  10;
x = linspace(a,b);
plot(x,pol(x),'b-');
%Polinomio
pol = @(x) 230.*x.^4 + 18.*x.^3 + 9.*x.^2 - 221.*x - 9;

%Grafica
figure(1);
a = -5;
b =  0;
c = 5;
x = linspace(a,b);
plot(x,pol(x),'b-');

%Constantes
maxit = 5000;
tol = 1e-6;

[pf1,~,~,~,~] = biseccion3(pol, a, b, maxit, tol)
[pf2,~,~,~,~] = biseccion3(pol, b, c, maxit, tol)
