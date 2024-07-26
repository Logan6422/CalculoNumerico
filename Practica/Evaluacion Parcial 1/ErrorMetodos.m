%Matriz y vector
A = [ 3  1 -1  1  2;
      1  3  2 -2 -2;
     -2 -2  1 -2 -2;
      2 -1 -1  3  2;
      0  0  1  1  2];
b = [1 4 -1 2 2]';


%Metodo de Eliminacion Gaussiana
[resElimGaussiana] = gauss1(A,b);
resElimGaussiana;

%Constantes
x0 = zeros(5,1);
maxit = 5000;
tol = 1e-4;

%Metodo Sor y Jacobi
[xJac, ~, itJac, ~]=Jacobi(A, b, x0, maxit, tol);
[xGS, ~, itGS, ~] = GaussSeidel(A, b, x0, maxit, tol);

#disp('radios espectrales');
[radJac] = RadioEspectral(A,'ja',0);% res = 0.936870533911574
[radGS] = RadioEspectral(A,'gs',0); %res = 1.657820769297521

%Como radio espectral de GaussSeidel es mayor a 1 entonces no converge
[xJac, ~, itJac, ~]=Jacobi(A, b, x0, maxit, tol); #137 iteraciones

#Error relativo cometido por metodo Jacobi
diff = (xJac - resElimGaussiana);
err_rel = norm(diff,inf)/norm(resElimGaussiana,inf)
