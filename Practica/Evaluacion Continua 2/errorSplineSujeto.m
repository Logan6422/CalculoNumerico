%Funcion
k = 0.04;
pt = 3.5;
f = @(x) (x./(1-x)).*(sqrt((2.*pt)./(2+x)))-k;

%Grafica
a = 0;
b = 0.1;
x = linspace(a,b);
plot(x,f(x),'b-');

%Inciso a
%Metodo de biseccion
maxit = 5000;
tol = 1e-8;
[res, ~, ~, ~,~] = biseccion3(f, a, b, maxit, tol);
res


%Inciso b
x2 = 0.02;
f2 = @(presion) (x2./(1-x2)).*(sqrt((2.*presion)./(2+x2)))-k;

%Grafica
figure(2);
a2 = 3;
b2 = 4;
xd = linspace(a2,b2);
plot(xd,f2(xd),'b-');

%Metodo de biseccion
[res2, ~, ~, ~,~] = biseccion3(f2, a2, b2, maxit, tol);
res2
