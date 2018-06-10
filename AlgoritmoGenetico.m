%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Prof. Dr. Jarbas Joaci
%Algoritimo genetico para encontrar o maximo da funcao f(x,y)
%f(x,y) = |x*sen(y*pi/4) + y*sen(x*pi/4)|

%criar populacao
num = input('Digite o numero de individuos que deseja criar: '); %num de individuos da população
tam = input('Digite o numero de genes de cada individuo: '); %numero de genes de cada individuo
geracoes = input('Digite o limite de interações: '); %limite de iterações

populacao = zeros(num,tam); %populacao atual
newPopulacao = zeros(num,tam); %nova populacao
for i=1:num %para toda os individuos
    populacao(i,:) = criaIndividuo(tam); %cria individuo aleatorio
    [x,y] = converte(populacao(i,:)); %converte os binarios do individuo em x e y reais
    nota(i) = avalia(x,y); %avalia o individuo
end

%selecionar os pais
%sortear dois inteiro entre 1 e total da roleta e realizar o cruzamento
%entre eles
for i=1:geracoes %ate um numero maximo de geracoes
    [rolet,ncr] = roleta(ceil(nota)); %calcula a roleta para a nota da populacao
    k=1; %indice da nova populacao
    for j=1:ceil(num/2) %numero de cruzamentos = metade do tamanho da população
        a = randi(ncr); %sorteia um inteiro aleatorio entre 1 e o numero de casas da roleta
        b = randi(ncr); %sorteia outro inteiro aleatorio entre 1 e o numero de casas da roleta
        a = rolet(a); %a recebe o pai da casa sorteada a
        b = rolet(b); %b recebe o pai da casa sorteada b
        [newPopulacao(k,:),newPopulacao(k+1,:)] = filhos(populacao(a,:),populacao(b,:)); %2 filhos de 2 pais
        k = k+2; %incrementa k
    end
    %nova populacao obtida
    populacao = newPopulacao; %populacao atual = nova populacao
    for m=1:num %para todos os elementos
        [x,y] = converte(populacao(m,:)); %converte os binarios do individuo em x e y reais
        nota(m) = avalia(x,y); %avalia o individuo
    end
end
[maximo, indice] = max(nota); %melhor resultado obtido ao fim das interacoes
fprintf('O maximo encontrado foi: %.8f\n',maximo);%exibe o maximo encontrado
disp('O individuo que corresponde a esse maximo: ')
populacao(indice,:) %exibe o individuo (binario)
fprintf('O x,y desse maximo: ')
[x,y]=converte(populacao(indice,:))%exibe o individuo (x,y)