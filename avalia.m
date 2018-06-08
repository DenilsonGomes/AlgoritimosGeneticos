%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Função que avalia o individuo

function nota = avalia(X,Y)
nota = abs(sin(X*pi/4)+sin(Y*pi/4));
