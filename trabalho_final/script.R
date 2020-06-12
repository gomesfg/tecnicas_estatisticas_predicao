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
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.84    6.92   10.08   12.37   15.63   64.08 
summary(dados$instrucao)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00   12.00   12.00   13.15   16.00   20.00 
summary(dados$experiencia)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00    9.00   18.00   18.79   27.00   56.00 
summary(dados$idade)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 18.00   29.00   37.00   37.93   47.00   65.00 

Na variável "Salario" nota-se que existe uma discrepancia grande de valores visto que a média é 12,37 e o valor máximo 64,08. Ou seja, nesta amostra são poucas as pessoas que ganham um salário elevado.
Na variável "Instrucao" o conjunto parece estar bem distribuido, visto que a média ficou em 13,15 sendo o mínimo 0 e o máximo 20.
Na variável "Experiencia" nota-se que existe uma discrepancia grande de valores visto que a média é 18,79 e o valor máximo 56,08. Ou seja, nesta amostra são poucas as pessoas que possuem quantidade de anos de experiência elevado.
Na variável "Idade" o conjunto parece estar bem distribuido, visto que a média ficou em 37,93 sendo o mínimo 18 e o máximo 65.

# 2) Calcule as medidas de dispersão (Amplitude, Desvio-Padrão, Variância, Coeficiente de
# Variação, Assimetria e Curtose) para as variáveis “salario”, “instrucao", “experiência" e “idade”. Responda o
# que segue:

# install.packages("fBasics")
library(fBasics)

# Salário
max(dados$salario)-min(dados$salario) # Amplitude
# 63.24
sd(dados$salario)/mean(dados$salario) # Coeficiente de Variação
# 0.6385611
basicStats(dados$salario) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação
# nobs             1289.000000
# NAs                 0.000000
# Minimum             0.840000
# Maximum            64.080002
# 1. Quartile         6.920000
# 3. Quartile        15.630000
# Mean               12.365849
# Median             10.080000
# Sum             15939.580003
# SE Mean             0.219938
# LCL Mean           11.934374
# UCL Mean           12.797325
# Variance           62.352348
# Stdev               7.896350
# Skewness            1.845964
# Kurtosis            4.824411


# Instrução
max(dados$instrucao)-min(dados$instrucao) # Amplitude
# 20
sd(dados$instrucao)/mean(dados$instrucao) # Coeficiente de Variação
# 0.2140592
basicStats(dados$instrucao) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação
# nobs               1289.000000
# NAs                   0.000000
# Minimum               0.000000
# Maximum              20.000000
# 1. Quartile          12.000000
# 3. Quartile          16.000000
# Mean                 13.145074
# Median               12.000000
# Sum               16944.000000
# SE Mean               0.078374
# LCL Mean             12.991320
# UCL Mean             13.298828
# Variance              7.917602
# Stdev                 2.813823
# Skewness             -0.290044
# Kurtosis              2.968193


# Experiência
max(dados$experiencia)-min(dados$experiencia) # Amplitude
# 56
sd(dados$experiencia)/mean(dados$experiencia) # Coeficiente de Variação
# 0.6207018
basicStats(dados$experiencia) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação
# nobs                 1289.000000
# NAs                     0.000000
# Minimum                 0.000000
# Maximum                56.000000
# 1. Quartile             9.000000
# 3. Quartile            27.000000
# Mean                   18.789760
# Median                 18.000000
# Sum                 24220.000000
# SE Mean                 0.324846
# LCL Mean               18.152474
# UCL Mean               19.427045
# Variance              136.021758
# Stdev                  11.662837
# Skewness                0.375232
# Kurtosis               -0.675665


# Idade
max(dados$idade)-min(dados$idade) # Amplitude
# 47
sd(dados$idade)/mean(dados$idade) # Coeficiente de Variação
# 0.3030006
basicStats(dados$idade) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação
# nobs           1289.000000
# NAs               0.000000
# Minimum          18.000000
# Maximum          65.000000
# 1. Quartile      29.000000
# 3. Quartile      47.000000
# Mean             37.934833
# Median           37.000000
# Sum           48898.000000
# SE Mean           0.320151
# LCL Mean         37.306758
# UCL Mean         38.562908
# Variance        132.118421
# Stdev            11.494278
# Skewness          0.269270
# Kurtosis         -0.772023

# a. Com relação ao Coeficiente de Variação, qual é a variável que possui maior discrepância em seus
# valores? E a com menor discrepância?
A maior discrepância foi da variável "Salario" com 63,8%. A menor discrepância foi da variável "Instrucao" com 21,4%.

# b. Qual deve ser a interpretação dada ao Coeficiente de Variação?
O coeficiente de variação é o desvio padrão expresso como uma porcentagem média. Representa a variação dentro de um conjunto de observações.

# c. Considerando que as medidas de Assimetria e Curtose qualificam a média como boa medida de
#tendência central, existe alguma das variáveis que possua problemas de assimetria e/ou curtose? Justifique.
Sim, a variável "Salario" possui assimetria positiva, predominaminando os valores mais altos das observações. 
As demais variáveis possuem distribuição simétrica e mesocúrtica.

# 3) Considere uma análise que possa ser realizada sobre a variável salario. Faça os
# procedimentos destacados a seguir:

# a. Calcule a média e a mediana do “salario” para mulheres e homens separadamente. Qual é a
# tendência apresentada para média e para mediana?
mean(dados$salario[dados$sexo == 1]) # Mulheres
# 10.59367
mean(dados$salario[dados$sexo == 0]) # Homens
# 14.11889
median(dados$salario[dados$sexo == 1]) # Mulheres
# 8.89
median(dados$salario[dados$sexo == 0]) # Homens
# 12

Pode-se observar que a tendência para a média é que os homens ganham mais do que as mulheres.
Ao observar a mediana, podemos dizer que 50% dos homens ganham mais que 12 e a outra metade menos que 12.
Já as mulheres, podemos dizer que 50% ganham mais que 8,89 e a outra metade menos que 8,89.

# b. Calcule a média e mediana do “salario” para brancos e não brancos. Qual é a tendência apresentada para média
# e para mediana?
mean(dados$salario[dados$cor == 1]) # Não-Branco
# 9.990203
mean(dados$salario[dados$cor == 0]) # Branco
# 12.79442
median(dados$salario[dados$cor == 1]) # Não-Branco
# 8
median(dados$salario[dados$cor == 0]) # Branco
# 11

Pode-se observar que a tendência para a média é que os brancos ganham mais do que os não-brancos.
Ao observar a mediana, podemos dizer que 50% dos brancos ganham mais que 11 e a outra metade menos que 11.
Já os não-brancos, podemos dizer que 50% ganham mais que 8 e a outra metade menos que 8.


# 4) Faça um gráfico Box-Plot para as variáveis salario, instrucao, experiencia e idade e
# identifique se existem outliers. Quantas observações deveriam ser excluídas em cada variável por serem
# prováveis outliers?
# Salário
boxplot(dados$salario, main = "Salário")
# Distancia Interquartil ((Q3 - Q1) * 3) -> 15,63 - 6,92 = 8,71 * 3 = 26,13
Na variável salário existem 14 prováveis outliers (considerando a distancia interquartil * 3).

# Instrução
boxplot(dados$instrucao, main = "Instrução")
# Distancia Interquartil ((Q3 - Q1) * 3) -> 16 - 12 = 4 * -3 = -12
Na variável instrução não existem prováveis outliers (considerando a distancia interquartil * -3). Porém existem 20 possíveis outliers (considerando a distancia interquartil * -1,5)

# Experiência
boxplot(dados$experiencia, main = "Experiência")
# Distancia Interquartil ((Q3 - Q1) * 3) -> 27 - 9 = 18 * 3 = 54
Na variável experiência não existem prováveis outliers (considerando a distancia interquartil * -3). Porém existem 1 possível outlier (considerando a distancia interquartil * -1,5)

# Idade
boxplot(dados$idade, main = "Idade")
Na variável idade não existem prováveis ou possíveis outliers.


# 5) Considerando os gráficos de dispersão, construa-os conforme pedido a seguir:
# a. Faça um gráfico que relacione o “salario” com o tempo de “instrucao”. Analise uma eventual
# tendência dos dados.
plot(dados$instrucao, dados$salario, xlab="Instrução", ylab="Salário", main="Salário versus Instrução")
# Adicional - Linha de Tendencia 
tend2 <- lm(dados$salario ~ dados$instrucao)
abline(tend2, col = "red")
abline(h=mean(dados$salario), col = "green")
abline(v=mean(dados$instrucao), col = "green")
A tendencia é que as pessoas com mais de 13,15 anos de instrução, ganhem um salário maior que 12.37 anual.

# b. Faça um gráfico que relacione o “salario” com o tempo de “experiência". Analise uma eventual
# tendência dos dados.
plot(dados$experiencia, dados$salario, xlab="Experiência", ylab="Salário", main="Salário versus Experiência")
# Adicional - Linha de Tendencia 
tend2 <- lm(dados$salario ~ dados$experiencia)
abline(tend2, col = "red")
abline(h=mean(dados$salario), col = "green")
abline(v=mean(dados$experiencia), col = "green")
A tendencia é que as pessoas com mais de 18,79 anos de experiencia, ganhem um salário maior que 12.37 anual.

# c. Faça um gráfico que relacione o “salario” com a “idade”. Analise uma eventual tendência dos dados.
plot(dados$idade, dados$salario, xlab="Idade", ylab="Salário", main="Salário versus Idade")
# Adicional - Linha de Tendencia 
tend2 <- lm(dados$salario ~ dados$idade)
abline(tend2, col = "red")
abline(h=mean(dados$salario), col = "green")
abline(v=mean(dados$idade), col = "green")
A tendencia é que as pessoas com idade maior que 37,93 anos, ganhem um salário maior que 12.37 anual.

# d. Faça um gráfico que relacione a “experiencia" com o tempo de “instrucao". Analise uma eventual
# tendência dos dados. 
plot(dados$experiencia, dados$instrucao, xlab="Experiência", ylab="Instrução", main="Instrução versus Experiência")
# Adicional - Linha de Tendencia 
tend2 <- lm(dados$instrucao ~ dados$experiencia)
abline(tend2, col = "red")
abline(h=mean(dados$instrucao), col = "green")
abline(v=mean(dados$experiencia), col = "green")
A tendencia é que as pessoas com mais de 13,15 anos de instrução, tenham experiencia menor que 18,79 anos.


# 6) Considerando as variáveis estritamente quantitativas. Construa um Histograma e
# identifique a variável com melhor ajuste percebido para a distribuição normal de probabilidade.
#Salario, isntrução, experiencia, idade
hist(dados$salario,  breaks=5, xlab="Salário", ylab="")
hist(dados$instrucao,  breaks=5, xlab="Instrução", ylab="")
hist(dados$experiencia,  breaks=5, xlab="Experiência", ylab="")
hist(dados$idade,  breaks=5, xlab="Idade", ylab="")

# FALTA O CALCULO DA DISTRIBUIÇÃO NORMAL


# 7) Considere que a variável “salario” segue uma distribuição normal de probabilidade. A
# média e o desvio-padrão já foram calculados. Assim determine o que se pede:

# Salário
Media_Salario <- mean(dados$salario) # Média
# 12.36585
DesvPad_Salario <- sd(dados$salario) # Desvio Padrão
# 7.89635
Q3 <- quantile(dados$salario, probs=0.75) # 3º Quartil
Q1 <- quantile(dados$salario, probs=0.25) # 1º Quartil

# a. Qual a probabilidade estimada de uma pessoa ganhar mais do que o 3º quartil?
1-pnorm(Q3, mean = Media_Salario, sd = DesvPad_Salario)
A probabilidade de uma pessoa ganhar mais do que o 3º quartil é de 33,96661%.

# b. Qual a probabilidade estimada de uma pessoa ganhar menos do que o 1º quartil?
1-pnorm(Q1, mean = Media_Salario, sd = DesvPad_Salario)
# 1 - 0.7547981 = 0.2452019
A probabilidade de uma pessoa ganhar menos do que o 1º quartil é de 24,52019%.

# c. O que é mais provável, considerando a probabilidade estimada, a pessoa ganhar menos do que a
# média ou a pessoa ganhar menos do que a mediana?
# probabilidade
# Média
1-(1-pnorm(12.37, mean = Media_Salario, sd = DesvPad_Salario))
# Mediana
1-(1-pnorm(10.08, mean = Media_Salario, sd = DesvPad_Salario))
O mais provável é ganhar menos que a média (50%)
