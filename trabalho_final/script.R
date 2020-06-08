#----------------------------------------------
# Trabalho Final
# Aluno: Felipe Eduardo Gomes
# Data Science - Turma 2
#----------------------------------------------

# Limpar a sujeira do console
cat("\014")

# Mudar o diretório do trabalho
setwd("C:/Users/feeli/Documents/GitHub/tecnicas_estatisticas_predicao/trabalho_final")

# Carregar a Base de Dados
dados <- read.csv("./seed/Dados.csv", header = T, sep = ";", dec = ",")
attach(dados)

# 1) Calcule as medidas de posição (Média, Mediana, Máximo, Mínimo, 1º Quartil e 3º quartil)
# para as variáveis “salario”, “instrucao", “experiência" e “idade”. Apresente os cálculos e faça uma
# interpretação dos resultados.
summary(dados$salario)
summary(dados$instrucao)
summary(dados$experiencia)
summary(dados$idade)


# 2) Calcule as medidas de dispersão (Amplitude, Desvio-Padrão, Variância, Coeficiente de
# Variação, Assimetria e Curtose) para as variáveis “salario”, “instrucao", “experiência" e “idade”. Responda o
# que segue:

# a. Com relação ao Coeficiente de Variação, qual é a variável que possui maior discrepância em seus
# valores? E a com menor discrepância?

# b. Qual deve ser a interpretação dada ao Coeficiente de Variação?

# c. Considerando que as medidas de Assimetria e Curtose qualificam a média como boa medida de
#tendência central, existe alguma das variáveis que possua problemas de assimetria e/ou curtose? Justifique.


# 3) Considere uma análise que possa ser realizada sobre a variável salario. Faça os
# procedimentos destacados a seguir:

# a. Calcule a média e a mediana do “salario” para mulheres e homens separadamente. Qual é a
# tendência apresentada para média e para mediana?

# b. Calcule a média do “salario” para brancos e não brancos. Qual é a tendência apresentada para média
# e para mediana?


# 4) Faça um gráfico Box-Plot para as variáveis salario, instrucao, experiencia e idade e
# identifique se existem outliers. Quantas observações deveriam ser excluídas em cada variável por serem
# prováveis outliers?


# 5) Considerando os gráficos de dispersão, construa-os conforme pedido a seguir:
# a. Faça um gráfico que relacione o “salario” com o tempo de “instrucao”. Analise uma eventual
# tendência dos dados.

# b. Faça um gráfico que relacione o “salario” com o tempo de “experiência". Analise uma eventual
# tendência dos dados.

# c. Faça um gráfico que relacione o “salario” com a “idade”. Analise uma eventual tendência dos dados.

# d. Faça um gráfico que relacione a “experiencia" com o tempo de “instrucao". Analise uma eventual
# tendência dos dados. 


# 6) Considerando as variáveis estritamente quantitativas. Construa um Histograma e
# identifique a variável com melhor ajuste percebido para a distribuição normal de probabilidade.


# 7) Considere que a variável “salario” segue uma distribuição normal de probabilidade. A
# média e o desvio-padrão já foram calculados. Assim determine o que se pede:

# a. Qual a probabilidade estimada de uma pessoa ganhar mais do que o 3º quartil?

# b. Qual a probabilidade estimada de uma pessoa ganhar menos do que o 1º quartil?

# c. O que é mais provável, considerando a probabilidade estimada, a pessoa ganhar menos do que a
# média ou a pessoa ganhar menos do que a mediana?
  