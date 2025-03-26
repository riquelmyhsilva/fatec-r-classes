# Riquelmy Henrique Silva
# Disciplina: Projeto Integrador II
# Aula 02
# Conteúdo: Operadores Lógicos e Aritiméticos, Funções e Vetores
# --------------------------------------------------------------

# Criando uma função de média

calc_avarage <- function(vetor) {
  sum <- 0
  for (i in vetor){
    sum <- sum + i
  }
  avarage <- sum / length(vetor)
  return(avarage)
}

# Criando uma função para mediana

calc_median <- function(vetor) {
  vetor <- sort(vetor)
  n <- length(vetor)
  
  if (n %% 2 != 0){
    median <- vetor[(n + 1) / 2]
  } else {
    median <- (vetor[n / 2] + vetor[(n / 2) + 1 ]) / 2
  }
  
  return(median)
}

# Dados

x <- c(2, 2, 5, 7, 8, 9, 20)
y <- c(3, 3, 4, 5, 5, 7, 8, 9, 9, 14)
z <- c(2.34, 4.56, 5.35, 6.45)

# Criando variaveis para armazenar os resultados das funções

avarage_x <- calc_avarage(x)
median_x <- calc_median(x)

avarage_y <- calc_avarage(y)
median_y <- calc_median(y)

avarage_z <- calc_avarage(z)
median_z <- calc_median(z)

# Mostrando os resultados

paste("Média de X:", avarage_x)
paste("Mediana de X:", median_x)

paste("Média de Y:", avarage_y)
paste("Mediana de Y:", median_y)

paste("Média de Z:", avarage_z)
paste("Mediana de Z:", median_z)