#### Questão 1 ####

#https://github.com/Nvbittencourt/lista_3_nathalia_bittencourt

#### Questão 2 ####

#Atribuindo valores numéricos a x:
x <- c(2, 4, 6, 8)

#Atribuindo valores numéricos a y:
y <- c(1, 3, 5, 7)

#Atribuindo função para z:
z <- x+y

#Comando soma
sum(z)

#Valor CPF:
CPF<- 08531117402

#Multiplicando resultado da sum(z) com o CPF:
sum(z)*CPF

#Resposta: = 307120226472


#Questão 3 ####

head(mtcars)

#Descrição dos tipos de variáveis da base (nomes, estrutura e tipo de cada variável, respectivamente):
names(mtcars)

str(mtcars)

class(mtcars$mpg)
class(mtcars$cyl)
class(mtcars$disp)
class(mtcars$hp)
class(mtcars$drat)
class(mtcars$wt)
class(mtcars$qsec)
class(mtcars$vs)
class(mtcars$am)
class(mtcars$gear)
class(mtcars$carb)

#Todas as variáveis da base são numéricas

#Número de dimensões da base
dim(mtcars)

#impressão da terceira coluna
mtcars[3]

#impressão da segunda linha
mtcars[2,]

#Impressão do quarto elemento da variável "cyl"
mtcars[4,2]

#Resumo descritivo da base (apresenta média, mediana, quartis...)
summary(mtcars)


#### Questão 4 ####
#Instalando o pacote turmas.csv
install.packages("ffbase", dependencies = TRUE)
require(ffbase)
library(readr)

getwd()

#Diretório:
setwd("C:/Users/nathi/Desktop/Mestrado/Análise Dados")

#Dimensão do diretório TURMAS:
dim(TURMAS)

#solicitando abertura dos dados:
TURMAS <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|")

#Resumo do diretório TURMAS:
summary(TURMAS)

#Seleconando elementos apenas da UF de PE
turmas_pe <- subset(TURMAS, CO_UF == "26")

#Dimensão do diretório turmas_pe
dim(turmas_pe)

#Salvando como data.frame o objeto:
turmas_pe <- as.data.frame(turmas_pe)

#Salvando a base:
save(turmas_pe, file = "TURMASPE.RData")


#### Questão 5 ####
setwd("C:/Users/nathi/Desktop/Mestrado/Análise Dados")
require(ffbase)
library(readr)
setwd("C:/Users/nathi/Desktop/Mestrado/Análise Dados")

# base de dados referentes a turmas do Estado de Pernambuco

head(turmas_pe[, 1:5])

names(turmas_pe)

#Dimensão da base do dietório turmas_pe
dim(turmas_pe) 
# 102996 linhas     88 colunas#

#Cálculo da média:
mean(turmas_pe$NU_MATRICULAS)
#Média do número de matriculados por turma = 23.07089#


#### Questão 6####
setwd("C:/Users/nathi/Desktop/Mestrado/Análise Dados")

#Processando os dados:
getwd()
docentes_ne <- read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv" , sep = "|" , first.rows=100000)

#Base dos dados:
dim(docentes_ne)
# [1] 2930354     132 #
head(docentes_ne[, 1:5])

#Observação da descrição da variável de raça (como tabela e depois o subconjunto da UF de PE, respectivamente#

table(docentes_ne$TP_COR_RACA)

docentes_pe <- subset(docentes_ne, CO_UF == "26")

#Criação do data.frame

docentes_pe <- as.data.frame(docentes_pe)

getwd()

save(docentes_pe, file = "docentes_pe_censo_escolar_2016.RData")

#Tabela docentes_pe referente a cor e raça:
table(docentes_pe$TP_COR_RACA) 
#0      1      2      3      4      5 #
#181573  98141  14710 114718   1419   2102 #

#Porcentagem
prop.table(table(docentes_pe$TP_COR_RACA))*100
#0          1          2          3          4          5 #
#44.0003102 23.7823599  3.5646520 27.7994393  0.3438641  0.5093745 #

# Percentual de docentes que não declararam cor ou raça = 44%

# Apenas 3,5% dos docentes se declaram "pretos" e 27,79% se declaram "pardos". 

# soma da porcetagem de pretos e pardos

3.5+27.79

# Resultado da porcetagem de pretos e pardos: 31,29%

