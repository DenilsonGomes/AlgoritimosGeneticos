%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Função que cria um undividuo com 20 genes (binarios aleatorios)

function A = criaIndividuo(tam)
for i=1:tam %para i de 1 ate o tamanho dos individuos
    A(i) = randi(2)-1; %o i-esimo gene do individuo eh 0 ou 1
end
%retorna o individuo com criado aleatoriamente