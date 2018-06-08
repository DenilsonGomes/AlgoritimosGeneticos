%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Função que gera os filhos de 2 pais

%funcao recebe os pais e retorna os filhos
function [filho1, filho2] = filhos(A,B)
[~,tam] = size(A); %tam recebe o tamanho dos pais (que devem ser e sao iguais)
filho1 = zeros(1,tam); %filho1 tem a mesma dimensao dos pais
filho2 = zeros(1,tam); %filho1 tem a mesma dimensao dos pais
pontoCorte = ceil(tam/2); %definindo o ponto de corte
filho1(1,1:pontoCorte) = A(1,1:pontoCorte); %primeira parte do filho1 vem do pai A
filho1(1,pontoCorte+1:end) = B(1,pontoCorte+1:end); %segunda parte do filho1 vem do pai B
filho2(1,1:pontoCorte) = B(1,1:pontoCorte); %primeira parte do filho2 vem do pai B
filho2(1,pontoCorte+1:end) = A(1,pontoCorte+1:end); %segunda parte do filho2 vem do pai A