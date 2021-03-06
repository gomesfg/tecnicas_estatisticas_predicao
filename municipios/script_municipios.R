#----------------------------------------------
# An�lise da Estat�stica Descritiva dos Dados
#----------------------------------------------

# Mudar o diret�rio do trabalho
setwd("C:/Users/feeli/Documents/GitHub/tecnicas_estatisticas_predicao/municipios")

# Carregar a Base de Dados
  # Base de Dados Munic�pios_SC
municipios <- read.csv("Municipios_SC.csv", header = T, sep = ";", dec = ",")
attach(municipio)

# Estatisticas Descritivas

  # Medidas de Posi��o
    
    # Medidas de Tend�ncia Central
      # M�dia
      mean(municipios$Popula��o)
      mean(municipios$�rea)
      mean(municipios$Densidade)
      
      # Mediana
      median(municipios$Popula��o)
      median(municipios$�rea)
      median(municipios$Densidade)
      
      # Outras Medidas de Posi��o
      quantile(municipios$Popula��o, probs = c(0, 0.5, .1, .25, .5, .75, .9, .95, 1))
      quantile(municipios$�rea, probs = c(0, 0.5, .1, .25, .5, .75, .9, .95, 1))
      quantile(municipios$Densidade, probs = c(0, 0.5, .1, .25, .5, .75, .9, .95, 1))
      
      # Utilizar o c�digo summary (M�nimo, 1o quartil, mediana, m�dia, 3o quartil, m�ximo)
      summary(municipios$Popula��o)
      summary(municipios$�rea)
      summary(municipios$Densidade)
    
  # Medidas de Dispers�o
      # Amplitude
      # Amplitude da Popula��o
      max(municipios$Popula��o)-min(municipios$Popula��o)
        
      # Amplitude da �rea
      max(municipios$�rea)-min(municipios$�rea)
        
      # Amplitude da Densidade
      max(municipios$Densidade)-min(municipios$Densidade)
      
      # Desvio Padr�o (Standard Deviation)
      sd(municipios$Popula��o)
      sd(municipios$�rea)
      sd(municipios$Densidade)
    
      # Vari�ncia
      var(municipios$Popula��o)
      var(municipios$�rea)
      var(municipios$Densidade)
      
      # Coeficiente de Varia��o
      sd(municipios$Popula��o)/mean(municipios$Popula��o)
      sd(municipios$�rea)/mean(municipios$�rea)
      sd(municipios$Densidade)/mean(municipios$Densidade)
    
  # Medida de Assimetria e Curtose
      # S�o medidas de qualidade da representa��o da M�dia
      
      # Necess�rio o pacote fBasics
      #install.packages("fBasics")
      library(fBasics)
      
      # Assimetria
        # N�o h� problemas de assimetria se -> -1 < Ass(X) < +1
        # H� problemas de assimetria negativa se -> Ass(X) < -1
        # H� problemas de assimetria positiva se -> Ass(X) > +1
        skewness(municipios$Popula��o)
        skewness(municipios$�rea)
        skewness(municipios$Densidade)
        
      # Curtose
        # N�o h� problemas de Curtose se -> -7 < Curt(X) < +7
        # H� problemas de Curtose (Leptocurtica) se -> Curt(X) < -7
        # H� problemas de Curtose (Platicurtica) se -> Curt(X) > +7
        kurtosis(municipios$Popula��o)
        kurtosis(municipios$�rea)
        kurtosis(municipios$Densidade)
        
# Estatisticas descritivas usando o fBasics
        basicStats(municipios$Popula��o)
        basicStats(municipios$�rea)
        basicStats(municipios$Densidade)
        
# Corrigindo a assimetria dos Dados
        # An�lise da Popula��o
        # Padronizar as vari�veis
        ln_pop <- log(municipios$Popula��o)
        
        # M�dia
        mean(ln_pop)
        
        # Median
        median(ln_pop)
        
        # Assimetria
        skewness(ln_pop)
        
        # Curtose
        kurtosis(ln_pop)
        
        # M�dia mais representativa
        exp(mean(ln_pop))
        
        # An�lise da �rea
        # Padronizar as vari�veis
        ln_area <- log(municipios$�rea)
        
        # M�dia
        mean(ln_area)
        
        # Median
        median(ln_area)
        
        # Assimetria
        skewness(ln_area)
        
        # Curtose
        kurtosis(ln_area)
        
        # M�dia mais representativa
        exp(mean(ln_area))
        
        # An�lise da Densidade
        # Padronizar as vari�veis
        ln_dens <- log(municipios$Densidade)
        
        # M�dia
        mean(ln_dens)
        
        # Median
        median(ln_dens)
        
        # Assimetria
        skewness(ln_dens)
        
        # Curtose
        kurtosis(ln_dens)
        
        # M�dia mais representativa
        exp(mean(ln_dens))