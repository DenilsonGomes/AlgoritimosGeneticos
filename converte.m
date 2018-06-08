%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Função que converte os 20 bits do individo em x e y reais.

function [x,y] = converte(A) %função que obtem os x e y reais do individo
[~,tam] = size(A); %tam recebe o tamanho de A
lim = ceil(tam/2); %limiar entre x e y
a = num2str(A(1:lim)); %a recebe a primeira metade dos genes
b = num2str(A(lim+1:end)); %b recebe a segunda metade dos genes
x = 20*bin2dec(a)/(2^(tam/2)-1); %retorna um x real entre 0 e 20
y = 20*bin2dec(b)/(2^(tam/2)-1); %retorna um y real entre 0 e 20