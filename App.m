clc,clear
[nombre,ruta] = uigetfile('*.XLSX');
if nombre == 0
    return;
else
    datos =strcat(ruta,nombre);

   X = readmatrix('DATOS.XLSX');
X(find(X==0))=[]

suma=sum(X);
length(X);
length(X)-1;
denominador=(length(X)*(length(X)-1));
p=suma/length(X);

PROMEDIO=p
var(X);
VARIANZA=var(X)
DESVIACION=sqrt(var(X))
VARIANZA2=(var(X)/length(X))
DESVIACION2=sqrt((var(X)/length(X)))

resta=(X-PROMEDIO);
N=resta.^2;
suma2=sum(N);
INCERTIDUMBREESTANDAR=sqrt(suma2/denominador)

t=1:1:98;
d=DESVIACION
y=p
m=X

v=ones(1,98);
v1=y.*v;
v2=d.*v;
v3=m.*v;

figure(1)
plot(t,v3,'b*',t,v1)














end







    

