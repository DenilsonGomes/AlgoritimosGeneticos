%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Prof. Dr. Jarbas Joaci
%Fun��o que avalia o individuo

function nota = avalia(X,Y)
nota = abs(Y*sin(X*pi/4)+X*sin(Y*pi/4)); %retorna a avalia��o do individuo