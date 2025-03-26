
# criando uma variavel
a <- 5*5

# sinal de igual tem exceções
b = 10 
b

c <- "hello world"
c
10 -> c
c

2 -> d
d
d <- c
d

e <- a + b
e

e <- "hello world"

# criando uma função

# função c
c(a,b)

# help função c
?c

a <- c(1,2)
a

# função summary

?summary
a <- c(1,10,100,500)
summary(a)

# função fora de um pacote padrão
?str_c

install.packages("stringr")
library(stringr)

Nome <- "Riquelmy"
Sobrenome <- "Silva"

NomeCompleto <- str_c(Nome, Sobrenome)
NomeCompleto
NomeCompleto <- str_c(Nome," ","Henrique ", Sobrenome)
NomeCompleto