format long;
clear all;clc;
%Matriz y vector
n = 40;
A = zeros(n,n) + diag(-1*ones(1,n-1),-1) + diag(-1*ones(1,n-1),1);
A = A + diag(2*(1:n));
b = zeros(n,1);
% Crear un vector columna con valores de 1 a n
i = (1:n)';
b = 1.5*i - 6;


%Metodo de eliminacion gaussiana
[xElimGauss] = gauss1(A,b);
xElimGauss = xElimGauss(7)


%Radio espectral Jacobi y GaussSeidel
[radioJac] = RadioEspectral(A,'ja',0)
[radioGS] = RadioEspectral(A,'gs',0)
disp('Ambos radios son < 1 por lo tanto convergen ambos metodos');

%Metodo Jacobi y GaussSeidel
tol = 1e-6;
maxit = 500;
x0 = b;
[xJac,~,itJac,~]=Jacobi(A, b, x0, maxit, tol);
[xGS,~,itGS,~]=GaussSeidel(A, b, x0, maxit, tol);

disp('Resultados');
xJacobi = xJac(7)
xGaussSeidel = xGS(7)
disp('Iteraciones');
itJac
itGS


%Calculo de los residuos
resJac = norm((A*xJac)-b,inf)
resGS = norm((A*xGS)-b,inf)


