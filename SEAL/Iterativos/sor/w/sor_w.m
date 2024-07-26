% sor_w.m
tol = 10E-5;
maxit = 1000;

# SOR
 %w = [1.0:0.01:1.3];
 w=linspace(1,1.3,30);
 it_SOR = [];
 for j = 1:length(w)
 [x, rh, it_SOR(j), t] =sor(A, b, x0, maxit, tol, w(j));
 endfor

 z=[w' it_SOR'];
 [pmin,p]= min(it_SOR)
 w(p)

 plot(w,it_SOR)

 grid on;
 grid minor;
