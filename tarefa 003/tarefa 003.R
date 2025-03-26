# Limpar 
rm(list=ls())

# Instalar bibliotecas

install.packages("readr")
install.packages("readxl")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("writexl")

# Bibliotecas

library(readr)   # CSV
library(readxl)  # XLSX
library(dplyr)   # Manipulação de dados
library(ggplot2) # Vizualização de dados
library(writexl) # Exportar para excel

# Ler arquivo

PATH <- "D:/docs/Fatec/3 Semestre/ProjetoInt/tarefa 003"
setwd(PATH)

# Definir caminhos especificos

path_csv <- "populacao_canada.csv"
path_xlsx <- "populacao_canada.xlsx"

# Importar CSV

data_csv <- read_csv(path_csv)

# Importar XLSX

data_xlsx <- read_xlsx(path_xlsx)

# Visualizar primeiros dados

print(head(data_csv)) # ou
head(data_csv)

# Vizualizar estrutura dos dados

print(str(data_csv)) # ou
str(data_csv)

# Estatísticas dos dados

summary(data_csv)

# Contar valores nulos

sum(is.na(data_csv))

# Manipulação dos dados

data <- data_csv %>%
  arrange(desc(Populacao)) %>% # Ordenar por ordem decrescente
  mutate(Densidade_hab_km2 = Populacao / Area_km2) # Calcular densidade populacional

data

# Estatísticas

  # Média 

mean(data_csv$Populacao, na.rm = TRUE)

  # Max

data_csv$Provincia[which.max(data_csv$Populacao)]

  # Min

data_csv$Provincia[which.min(data_csv$Populacao)]

# Gerando um grafico de barras

ggplot(data_csv, aes(x = reorder(Provincia, -Populacao), y = Populacao)) +
  geom_bar(stat = "identity", fill = "red") +
  theme_minimal() +
  labs(title = "População do Canadá por Província", x = "Província", y = "População") +
  coord_flip() # Inverter o eixo para melhor visualização

# Gerando gráfico de dispersão

ggplot(data_csv, aes(x = Area_km2, y = Populacao)) +
  geom_point(color = "green") +
  theme_minimal() +
  labs(title = "Relação entre Área e População", x = "Área (km²)", y = "População")

# Exportar dados
  
  # CSV
  
  write_csv(data, "populacao_canada_tratada.csv")
  
  # Excel
  
  write_xlsx(data, "populacao_canada_tratada.xlsx")
