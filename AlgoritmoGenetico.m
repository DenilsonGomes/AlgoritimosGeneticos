%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Algoritimo genetico para encontrar o maximo da funcao f(x,y)
%f(x,y) = |x*sen(y*pi/4) + y*sen(x*pi/4)|

%criar populacao
num = input('Digite o numero de individuos que deseja criar: '); %num de individuos da população
tam = input('Digite o numero de genes de cada individuo: '); %numero de genes de cada individuo

populacao = zeros(num,tam); %populacao
for i=1:num %para toda os individuos
    populacao(i,:) = criaIndividuo(tam); %cria individuo aleatorio
    [x,y] = converte(populacao(i,:)); %converte os binarios do individuo em x e y reais
    nota(i) = avalia(x,y); %avalia o individuo
end
populacao
nota

%selecionar os pais
%sortear dois inteiro entre 1 e total da roleta e realizar o cruzamento
%entre eles