%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Dr. Jarbas Joaci
%Fun��o que avalia o individuo

function nota = avalia(X,Y)
nota = abs(sin(X*pi/4)+sin(Y*pi/4));
