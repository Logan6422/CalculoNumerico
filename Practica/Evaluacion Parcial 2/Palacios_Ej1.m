%Datos
temp = [26.6 ,24.7 ,23.4 ,19.7 ,17.2 ,13.9 ,14.4 ,15.3 ,16.9 ,20.1 ,22.9 ,24.5]';
t = [1,2,3,4,5,6,7,8,9,10,11,12]';

%Funciones para el ajuste
f1 = @(t) t;  
f2 = @(t) ones(size(t));
f3 = @(t) sin((pi/6).*t);
f4 = @(t) cos((pi/6).*t);

%Ajuste
M = [f1(t) f2(t) f3(t) f4(t)];
A = M' * M;
b = M' * temp;

%Coeficientes
coef = A\b

ajuste = @(t) coef(1).*f1(t) + coef(2).*f2(t) + coef(3).*f3(t) + coef(4).*f4(t);

%Error
norm(temp(1)-ajuste(1))
%Temp enero 2020
ajuste(13)
%error relativo
error_rel = abs(27.5 - ajuste(13))/abs(27.5)
