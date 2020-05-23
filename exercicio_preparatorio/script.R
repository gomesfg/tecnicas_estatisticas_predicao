#----------------------------------------------
# Exercício preparatório
# Aluno: Felipe Eduardo Gomes
#----------------------------------------------

# Mudar o diretório do trabalho
setwd("C:/Users/feeli/Documents/GitHub/tecnicas_estatisticas_predicao/exercicio_preparatorio")

# Carregar a Base de Dados
dados <- read.csv("Exercício Preparatório.csv", header = T, sep = ";", dec = ",")
attach(pessoas)


# 1) As medidas de tendência central das variáveis numéricas (mínimo, máximo, 1º Quartil, 3º Quartil,
# mediana e média)
mean(dados$salario) # Média
median(dados$salario) # Mediana
max(dados$salario) # Máximo
min(dados$salario) # Mínimo
quantile(dados$salario, probs = 0.25) # 1º quartil
quantile(dados$salario, probs = 0.75) # 3º quartil


summary(pessoas$salario)
summary(pessoas$idade)
summary(pessoas$stress)


# 2) As medidas de dispersão das variáveis numéricas (amplitude, desvio-padrão, variância, coeficiente
# de variação, assimetria e curtose)


# 3) Calcule a média e a mediana do salário para homens e mulheres separadamente.


# 4) Calcule o desvio-padrão e o coeficiente de variação para homens e mulheres separadamente e
# verifique se existe diferença nas variações


# 5) Calcule a média e a mediana do salário para casado e solteiros separadamente.


# 6) Calcule a média e a mediana do nível de stress para homens e mulheres separadamente.


# 7) Calcule a média e a mediana do nível de stress para casado e solteiros separadamente.


# 8) Faça um gráfico de dispersão que compare o nível de stress com o salário do entrevistado.


# 9) Faça um gráfico de dispersão que compare o nível de stress com a idade do entrevistado.


# 10) Faça um gráfico box-plot das variáveis numéricas e verifique se existe a presença de outliers.


# 11) Considerando a média e o desvio-padrão para as mulheres, verifique qual a probabilidade de uma
# melhor receber acima do 3º quartil. E qual as chances de um homem? Assuma a distribuição normal
# para os dados.


# 12) Considerando a distribuição normal, com a média e o desvio-padrão dos casados, quais as chances
# do nível de stress de um destes respondentes ser menor do que 50 (metade da escala).
