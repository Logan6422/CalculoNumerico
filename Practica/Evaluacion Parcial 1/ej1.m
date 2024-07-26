%Constantes
g = 9.8;
c = 15;
t = 7;
v = 35;
a = 65;
b = 70;
tol = 1e-5;
maxit = 5000;

#////////////////////////////////////////////////////////////////////////////
%Inciso a
%Funcion
f = @(m) ((g.*m).*(1-e.^(-(c./m).*t))) - (c.*v);

%Grafica
m = linspace(a,b);
plot(m,f(m),'b-');

%Metodo de biseccion
[masa, ~, ~, ~,~] = biseccion3(f, a, b, maxit, tol);

%Corroboramos cifras exactas

masa;
#////////////////////////////////////////////////////////////////////////////

%Inciso b
%Funcion
a2 = 14;
b2 = 18;
m = 73;
f = @(c) ((g.*m).*(1-e.^(-(c./m).*t))) - (c.*v);

%Grafica
figure(2);
c = linspace(a2,b2);
plot(c,f(c),'b-');

%Metodo de biseccion
[c, ~, ~, ~,~] = biseccion3(f, a2, b2, maxit, tol);
c;




