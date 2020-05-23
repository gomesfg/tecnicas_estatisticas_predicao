#----------------------------------------------
# Exercício preparatório
# Aluno: Felipe Eduardo Gomes
#----------------------------------------------

# Mudar o diretório do trabalho
setwd("C:/Users/feeli/Documents/GitHub/tecnicas_estatisticas_predicao/exercicio_preparatorio")

# Carregar a Base de Dados
dados <- read.csv("Exercício Preparatório.csv", header = T, sep = ";", dec = ",")
attach(dados)


# 1) As medidas de tendência central das variáveis numéricas (mínimo, máximo, 1º Quartil, 3º Quartil,
# mediana e média)

    # Análise do Salário
    #mean(dados$salario) # Média
    #median(dados$salario) # Mediana
    #max(dados$salario) # Máximo
    #min(dados$salario) # Mínimo
    #quantile(dados$salario, probs = 0.25) # 1º quartil
    #quantile(dados$salario, probs = 0.75) # 3º quartil
    
    # Através do summary retorna o Mínimo, 1o quartil, mediana, média, 3o quartil e máximo.
    summary(dados$salario)
    
    # Análise da idade
    summary(dados$idade)
    
    # Análise do stress
    summary(dados$stress)


# 2) As medidas de dispersão das variáveis numéricas (amplitude, desvio-padrão, variância, coeficiente
# de variação, assimetria e curtose)

    # Instalar o pacote fBasics (caso não esteja instalado)
    # install.packages("fBasics")
    # Carregar o pacote fBasics para Assimetria e Curtose
    library(fBasics)
    
    # Assimetria 
    # -1 <= Ass(x) <= +1 - Distribuição Simétrica
    # Ass(x) < -1 - Assimetria Negativa
    # Ass(x) > +1 - Assimetria Positiva
    
    # Curtose
    # -7 <= Curt(x) <= +7 - Distribuição Mesocurtica
    # Curt(x) < -7 - Distribuição Leptocurtica
    # Curt(x) > +7 - Distribuição Platicurtica
    
    # Salário
    max(dados$salario)-min(dados$salario) # Amplitude
    sd(dados$salario) # Desvio Padrão
    var(dados$salario) # Variância
    sd(dados$salario)/mean(dados$salario) # Coeficiente de Variação
    skewness(dados$salario) # Assimetria
    kurtosis(dados$salario) # Curtose
    basicStats(dados$salario) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação
    
    # Idade
    max(dados$idade)-min(dados$idade) # Amplitude
    sd(dados$idade) # Desvio Padrão
    var(dados$idade) # Variância
    sd(dados$idade)/mean(dados$idade) # Coeficiente de Variação
    skewness(dados$idade) # Assimetria
    kurtosis(dados$idade) # Curtose
    basicStats(dados$idade) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação
    
    # Stress
    max(dados$stress)-min(dados$stress) # Amplitude
    sd(dados$stress) # Desvio Padrão
    var(dados$stress) # Variância
    sd(dados$stress)/mean(dados$stress) # Coeficiente de Variação
    skewness(dados$stress) # Assimetria
    kurtosis(dados$stress) # Curtose
    basicStats(dados$stress) # Retorna todos os comandos anteriores com exceção da Amplitude e Coeficiente de Variação


# 3) Calcule a média e a mediana do salário para homens e mulheres separadamente.

    # Média
    mean(dados$salario[dados$sexo == 1]) # Mulheres
    mean(dados$salario[dados$sexo == 0]) # Homens
    
    # Mediana
    median(dados$salario[dados$sexo == 1]) # Mulheres
    median(dados$salario[dados$sexo == 0]) # Homens


# 4) Calcule o desvio-padrão e o coeficiente de variação para homens e mulheres separadamente e
# verifique se existe diferença nas variações.
    
    # Salário
    sd(dados$salario[dados$sexo == 1]) # Desvio Padrão - Mulheres
    sd(dados$salario[dados$sexo == 1])/mean(dados$salario[dados$sexo == 1]) # Coeficiente de Variação - Mulheres
    
    sd(dados$salario[dados$sexo == 0]) # Desvio Padrão - Homens
    sd(dados$salario[dados$sexo == 0])/mean(dados$salario[dados$sexo == 0]) # Coeficiente de Variação - Mulheres

    # Idade
    sd(dados$idade[dados$sexo == 1]) # Desvio Padrão - Mulheres
    sd(dados$idade[dados$sexo == 1])/mean(dados$idade[dados$sexo == 1]) # Coeficiente de Variação - Mulheres
    
    sd(dados$idade[dados$sexo == 0]) # Desvio Padrão - Homens
    sd(dados$idade[dados$sexo == 0])/mean(dados$idade[dados$sexo == 0]) # Coeficiente de Variação - Mulheres
    
    # Stress
    sd(dados$stress[dados$sexo == 1]) # Desvio Padrão - Mulheres
    sd(dados$stress[dados$sexo == 1])/mean(dados$stress[dados$sexo == 1]) # Coeficiente de Variação - Mulheres
    
    sd(dados$stress[dados$sexo == 0]) # Desvio Padrão - Homens
    sd(dados$stress[dados$sexo == 0])/mean(dados$stress[dados$sexo == 0]) # Coeficiente de Variação - Mulheres
    
    
# 5) Calcule a média e a mediana do salário para casado e solteiros separadamente.
    # Média
    mean(dados$salario[dados$est_civil == 1]) # Casado
    mean(dados$salario[dados$est_civil == 0]) # Solteiro
    
    # Mediana
    median(dados$salario[dados$est_civil == 1]) # Casado
    median(dados$salario[dados$est_civil == 0]) # Solteiro
    

# 6) Calcule a média e a mediana do nível de stress para homens e mulheres separadamente.
    
    # Média
    mean(dados$stress[dados$sexo == 1]) # Mulheres
    mean(dados$stress[dados$sexo == 0]) # Homens
    
    # Mediana
    median(dados$stress[dados$sexo == 1]) # Mulheres
    median(dados$stress[dados$sexo == 0]) # Homens

    
# 7) Calcule a média e a mediana do nível de stress para casado e solteiros separadamente.

    # Média
    mean(dados$stress[dados$est_civil == 1]) # Casado
    mean(dados$stress[dados$est_civil == 0]) # Solteiro
    
    # Mediana
    median(dados$stress[dados$est_civil == 1]) # Casado
    median(dados$stress[dados$est_civil == 0]) # Solteiro
    

# 8) Faça um gráfico de dispersão que compare o nível de stress com o salário do entrevistado.
    
    plot(dados$salario, dados$stress, xlab="Salários", ylab="Stress", main="Salário versus Stress")
    # Adicional - Linha de Tendencia 
    tend <- lm(dados$stress ~ dados$salario)
    abline(tend, col = "red")
    abline(h=mean(dados$stress), col = "green")
    abline(v=mean(dados$salario), col = "green")

    
# 9) Faça um gráfico de dispersão que compare o nível de stress com a idade do entrevistado.

    plot(dados$idade, dados$stress, xlab="Idade", ylab="Stress", main="Salário versus Stress")
    # Adicional - Linha de Tendencia 
    tend2 <- lm(dados$stress ~ dados$idade)
    abline(tend2, col = "red")
    abline(h=mean(dados$stress), col = "green")
    abline(v=mean(dados$idade), col = "green")
    

# 10) Faça um gráfico box-plot das variáveis numéricas e verifique se existe a presença de outliers.
    
    # Salário
    boxplot(dados$salario, main = "Salário")
    
    # Idade
    boxplot(dados$idade, main = "Idade")
    
    # Stress
    boxplot(dados$stress, main = "Stress")
    
    
    # Salário
    boxplot(dados$salario ~ dados$sexo, main = "Salário") # Sexo
    boxplot(dados$salario ~ dados$est_civil, main = "Salário") # Estado Civil
    
    # Idade
    boxplot(dados$idade ~ dados$sexo, main = "Idade") # Sexo
    boxplot(dados$idade ~ dados$est_civil, main = "Idade") # Estado Civil
    
    # Stress
    boxplot(dados$stress ~ dados$sexo, main = "Stress")
    boxplot(dados$stress ~ dados$est_civil, main = "Stress")
    

# 11) Considerando a média e o desvio-padrão para as mulheres, verifique qual a probabilidade de uma
# melhor receber acima do 3º quartil. E qual as chances de um homem? Assuma a distribuição normal
# para os dados.

    # Funções da Distribuição Normal
    # dnorm() - Gerar a densidade da probabilidade p = (X=x)
    # pnorm() - Gerar a probabilidade de ocorrência de até um valor x, p(X<=x)
    # qnorm() - Fornecendo a probabilidade acumulada, retoma o valor que gera ela. 0 <= q <= 1
    # rnorm() - Gera um vetor de números aleatórios de distribuição normal.
    
    # Mulheres
    Media_Mulher <- mean(dados$salario[dados$sexo == 1]) # Média
    DesvPad_Mulher <- sd(dados$salario[dados$sexo == 1]) # Desvio Padrão
    Q3 <- quantile(dados$salario, probs=0.75) # 3º Quartil
    
    # Probabilidade de uma mulher receber mais que o terceiro quartil
    # P(Sal>Q3)=1-P(Sal<=Q3)
    1-pnorm(Q3, mean = Media_Mulher, sd = DesvPad_Mulher)
    
    
    # Homens
    Media_Homem <- mean(dados$salario[dados$sexo == 0]) # Média
    DesvPad_Homem <- sd(dados$salario[dados$sexo == 0]) # Desvio Padrão
    Q3 <- quantile(dados$salario, probs=0.75) # 3º Quartil
    
    # Probabilidade de um homem receber mais que o terceiro quartil
    # P(Sal>Q3)=1-P(Sal<=Q3)
    1-pnorm(Q3, mean = Media_Homem, sd = DesvPad_Homem)
    
    
# 12) Considerando a distribuição normal, com a média e o desvio-padrão dos casados, quais as chances
# do nível de stress de um destes respondentes ser menor do que 50 (metade da escala).
