# Verificando o diretório/pasta dos arquivos
getwd()

# Atribuindo valores a variáveis

x <- 1
y = x
x = 2L
x -> w

autor <- "Vitor"
curso <- TRUE
x + y + curso
z = 2.5


# Verificando a sua classe/tipo

class(autor)
class(curso)
class(x)
class(z)
class(y)
typeof(z)
typeof(x)
typeof(y)

# Conversão de tipos 
as.double(x)
as.integer(curso)

#Importando dados
dados <- read.table('docs/Aula2/dados.txt')
dados <- read.table('docs/Aula2/dados.txt', h = TRUE)
dados <- read.table('docs/Aula2/dados.txt', h = TRUE, fileEncoding='UTF-8')

# Alisson foi forçado pelo SERASA a economizar 1500 reais com skins em jogos online

dados[2,2] <- dados[2,2] -1500

# Carol foi contratada por uma multinacional e começou a ganhar 20.000 mensais
dados[3,3] <- 20000

#Vamos adicionar um quarto indivíduo no banco

#Nome
dados[4,1] <- "Thiago"
#Gasto
dados[4,2] <- 10000
#Renda
dados[4,3] <- 100000
#Curso
dados[4,4] <- TRUE + TRUE
#Time
dados[4,5] <- 3

# Ajuste nos tipos

dados[,4] <- as.logical(dados[,4])

# Inserindo informações pelo console (chamar um parente para cobaia)
#Nome

dados[5,1] <- readline()
#Gasto
dados[5,2] <- readline()
#Renda
dados[5,3] <- readline()
#Curso
dados[5,4] <- readline()
#Time
dados[5,5] <- readline()

# Ajuste nos tipos
dados[,1] <- as.character(dados[,1])
dados[,2] <- as.numeric(dados[,2])
dados[,3] <- as.numeric(dados[,3])
dados[,4] <- as.logical(dados[,4])
dados[,5] <- as.factor(dados[,5])

# Iremos querer ver renda comprometida

dados[,6] <- dados[,2]/dados[,3]*100
dados[,6] <- round(dados[,2]/dados[,3]*100,2)

dados[5,3] <- 1

dados[,6] <- dados[,2]/dados[,3]*100
dados[,6] <- round(dados[,2]/dados[,3]*100,2)

colnames(dados)

colnames(dados) <- c("Nome","Gastos","Renda","Curso","Time","Renda à Comprometida")



