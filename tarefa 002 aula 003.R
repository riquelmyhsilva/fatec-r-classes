# Riquelmy Henrique Silva
# Disciplina: Projeto Integrador II
# Aula 03
# Conteúdo: Dataframes
# --------------------------------------------------------------

# Inserindo tabelas como data.frame

# tabela 1
table_1 <- data.frame(
  xi = c(2, 3, 4, 5),
  fi = c(2, 3, 6, 1)
)

print(table_1)

# tabela 2
table_2 <- data.frame(
  xi = c(1, 3, 5, 7),
  fi = c(6, 3, 8, 1)
)

# tabela 3
table_3 <- data.frame(
  xi = c(2, 4, 6, 8),
  fi = c(4, 5, 5, 3)
)

# Criando funções

# Função de média

calc_avarage <- function(table) {
  sum_prod <- sum(table$xi * table$fi)
  sum_freq <- sum(table$fi)
  avarage <- sum_prod / sum_freq
  return(avarage)
}

# Função de moda

calc_mode <- function(table) {
  mode <- table$xi[which.max(table$fi)]
  return(mode)
}

# Função de mediana

calc_median <- function(table) {
  expand_values <- rep(table$xi, table$fi)
  sort_values <- sort(expand_values)
  n <- length(sort_values)
  
  if (n %% 2 != 0){
    median <- (sort_values[(n + 1)/2])
  } else {
    median <- (sort_values[n/2] + sort_values[n/2 + 1]) / 2
  }
  return(median)
}

# Variaveis para armazenar os resultados

avarage_table_1 <- calc_avarage(table_1)
mode_table_1 <- calc_mode(table_1)
median_table_1 <- calc_median(table_1)

avarage_table_2 <- calc_avarage(table_2)
mode_table_2 <- calc_mode(table_2)
median_table_2 <- calc_median(table_2)

avarage_table_3 <- calc_avarage(table_3)
mode_table_3 <- calc_mode(table_3)
median_table_3 <- calc_median(table_3)

# Apresentando os resultados

paste("Média da tabela 1: ", avarage_table_1)
paste("Mediana da tabela 1: ", median_table_1)
paste("Moda da tabela 1: ", mode_table_1)

paste("Média da tabela 2: ", avarage_table_2)
paste("Mediana da tabela 2: ", median_table_2)
paste("Moda da tabela 2: ", mode_table_2)

paste("Média da tabela 3: ", avarage_table_3)
paste("Mediana da tabela 3: ", median_table_3)
paste("Moda da tabela 3: ", mode_table_3)
