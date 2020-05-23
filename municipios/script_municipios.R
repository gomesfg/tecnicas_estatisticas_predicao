#----------------------------------------------
# Análise da Estatística Descritiva dos Dados
#----------------------------------------------

# Mudar o diretório do trabalho
setwd("C:/Users/feeli/Documents/GitHub/tecnicas_estatisticas_predicao/municipios")

# Carregar a Base de Dados
  # Base de Dados Municípios_SC
municipios <- read.csv("Municipios_SC.csv", header = T, sep = ";", dec = ",")
attach(municipio)

# Estatisticas Descritivas

  # Medidas de Posição
    
    # Medidas de Tendência Central
      # Média
      mean(municipios$População)
      mean(municipios$Área)
      mean(municipios$Densidade)
      
      # Mediana
      median(municipios$População)
      median(municipios$Área)
      median(municipios$Densidade)
      
      # Outras Medidas de Posição
      quantile(municipios$População, probs = c(0, 0.5, .1, .25, .5, .75, .9, .95, 1))
      quantile(municipios$Área, probs = c(0, 0.5, .1, .25, .5, .75, .9, .95, 1))
      quantile(municipios$Densidade, probs = c(0, 0.5, .1, .25, .5, .75, .9, .95, 1))
      
      # Utilizar o código summary (Mínimo, 1o quartil, mediana, média, 3o quartil, máximo)
      summary(municipios$População)
      summary(municipios$Área)
      summary(municipios$Densidade)
    
  # Medidas de Dispersão
      # Amplitude
      # Amplitude da População
      max(municipios$População)-min(municipios$População)
        
      # Amplitude da Área
      max(municipios$Área)-min(municipios$Área)
        
      # Amplitude da Densidade
      max(municipios$Densidade)-min(municipios$Densidade)
      
      # Desvio Padrão (Standard Deviation)
      sd(municipios$População)
      sd(municipios$Área)
      sd(municipios$Densidade)
    
      # Variância
      var(municipios$População)
      var(municipios$Área)
      var(municipios$Densidade)
      
      # Coeficiente de Variação
      sd(municipios$População)/mean(municipios$População)
      sd(municipios$Área)/mean(municipios$Área)
      sd(municipios$Densidade)/mean(municipios$Densidade)
    
  # Medida de Assimetria e Curtose
      # São medidas de qualidade da representação da Média
      
      # Necessário o pacote fBasics
      #install.packages("fBasics")
      library(fBasics)
      
      # Assimetria
        # Não há problemas de assimetria se -> -1 < Ass(X) < +1
        # Há problemas de assimetria negativa se -> Ass(X) < -1
        # Há problemas de assimetria positiva se -> Ass(X) > +1
        skewness(municipios$População)
        skewness(municipios$Área)
        skewness(municipios$Densidade)
        
      # Curtose
        # Não há problemas de Curtose se -> -7 < Curt(X) < +7
        # Há problemas de Curtose (Leptocurtica) se -> Curt(X) < -7
        # Há problemas de Curtose (Platicurtica) se -> Curt(X) > +7
        kurtosis(municipios$População)
        kurtosis(municipios$Área)
        kurtosis(municipios$Densidade)
        
# Estatisticas descritivas usando o fBasics
        basicStats(municipios$População)
        basicStats(municipios$Área)
        basicStats(municipios$Densidade)
        
# Corrigindo a assimetria dos Dados
        # Análise da População
        # Padronizar as variáveis
        ln_pop <- log(municipios$População)
        
        # Média
        mean(ln_pop)
        
        # Median
        median(ln_pop)
        
        # Assimetria
        skewness(ln_pop)
        
        # Curtose
        kurtosis(ln_pop)
        
        # Média mais representativa
        exp(mean(ln_pop))
        
        # Análise da Área
        # Padronizar as variáveis
        ln_area <- log(municipios$Área)
        
        # Média
        mean(ln_area)
        
        # Median
        median(ln_area)
        
        # Assimetria
        skewness(ln_area)
        
        # Curtose
        kurtosis(ln_area)
        
        # Média mais representativa
        exp(mean(ln_area))
        
        # Análise da Densidade
        # Padronizar as variáveis
        ln_dens <- log(municipios$Densidade)
        
        # Média
        mean(ln_dens)
        
        # Median
        median(ln_dens)
        
        # Assimetria
        skewness(ln_dens)
        
        # Curtose
        kurtosis(ln_dens)
        
        # Média mais representativa
        exp(mean(ln_dens))