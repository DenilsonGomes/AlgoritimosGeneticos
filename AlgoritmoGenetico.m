%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci

load twomoons.dat %carrega a base de dados
dados = twomoons;
dados(1:end,:);

scatterplot(dados(1:501,1:2))

scatterplot(dados(502:900,1:2))