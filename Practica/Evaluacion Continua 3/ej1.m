%Funcion
f = @(x) 3.*(x + 0.5).* sin((x-2.7)./2).^4;
df = @(x) 3.*(sin((x-2.7)/2).^4)+6.*(x+0.5).*(sin((x-2.7)/2).^3).*cos((x-2.7)/2);
a = 0;
b = 2.4;

%Valores para la funcion spline sujeta
x1 = linspace(a,b,11);
y1 = f(x1);
df1 = df(a);
df2 = df(b);

%Spline sujeto
[S,dS,ddS]=funcion_spline(x1,y1,df1,df2);
S(1); %Radio de la cupula en x = 1m

%Calculo de area de superficie de revolucion
int = @(x) (2.*pi.*S(x)).*sqrt(1+(dS(x).^2));

n = 3;
L = 100;

%for i=1:10
%  Area = cuad_gauss_c(int,a,b,L,n)
%  L = L*2;
%endfor

%Error cometido por el modelo spline sujeto
norm(S(1)-f(1))
