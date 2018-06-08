%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Função que avalia o individuo

function nota = avalia(X,Y)
nota = abs(Y*sin(X*pi/4)+X*sin(Y*pi/4)); %retorna a avaliação do individuo