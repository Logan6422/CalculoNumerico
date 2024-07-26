#Matriz y vector
n = 40;
A = zeros(n,n)+ 2*eye(n)+ diag(ones(1,n-1)*(-1),-1) + diag(ones(1,n-1)*(-1),1);
b = zeros(n,1);

for i=1:n
  b(i) = (1.5)*i-6;
endfor

#Metodo de Eliminacion Gaussiana
resultado = gauss1(A,b);

#Valor de x(20)
disp('Resultado Eliminacion Gaussiana');
resultado(20)

#Metodo de Jacobi Gauss-Seidel y SOR
w = 1.85;
maxit = 5000;
tol = 1e-5;
x0 = zeros(n,1);

[xJac,~, itJac,~] = Jacobi(A, b, x0, maxit, tol);
[xGs,~, itGs,~] = GaussSeidel(A, b, x0, maxit, tol);
[xSor,~, itSor,~] = SOR(A, b, x0, maxit, tol, w);
disp('Resultados en x(20)');
xJac(20)
xGs(20)
xSor(20)
disp('Iteraciones');
itJac
itGs
itSor


