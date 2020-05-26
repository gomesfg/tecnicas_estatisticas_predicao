#----------------------------------------------
# Trabalho Final
# Aluno: Felipe Eduardo Gomes
# Data Science - Turma 2
#----------------------------------------------

# Mudar o diretório do trabalho
setwd("C:/Users/feeli/Documents/GitHub/tecnicas_estatisticas_predicao/exercicio_preparatorio")
getwd()
setwd("../sed")

# Carregar a Base de Dados
dados <- read.csv("./seed/Dados.csv", header = T, sep = ";", dec = ",")
attach(dados)
