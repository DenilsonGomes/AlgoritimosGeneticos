%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Prof. Dr. Jarbas Joaci
%Fun��o que cria a roleta baseada na avalia��o dos individuos

function pai = roleta(nota) %fun��o recebe as notas dos individuos e retorna uma roleta
[~,num] = size(nota); %num recebe o numero de individuos
p=0; %casas da roleta ja preenchidas
for j=1:num %para todos os individuos
    for i=p+1:p+ceil(nota(j)) %para todo o intervalo de cada individuo (casas percorridas + nota arredondada pra cima)
        pai(i)=j; %roleta recebe o numero do pai
    end
    p = p + ceil(nota(j)); %percorreu todas as casas ate a ultima desse pai
end
%retorna a roleta dos possiveis pais