%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Função que plota a funçao f(x,y)
%f(x,y) = |x*sen(y*pi/4) + y*sen(x*pi/4)|

a=[0:0.1:20];
b=[0:0.1:20];
aa=0;
bb=0;
[aa,bb] = meshgrid(a,b);
zz = abs(yy*sin(xx*pi/4)+xx*sin(yy*pi/4));
surf(aa,bb,zz);