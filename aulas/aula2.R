# Verificando o diretório/pasta dos arquivos
getwd()

#Verificando a classe

# Caracteres
autor <- "Vítor"
autor
class(autor)
typeof(autor)
length(autor)

# Lógicos/Booleanos
curso <- TRUE
curso
class(curso)
typeof(curso)
length(curso)

# Numéricos
num <- 1
num1 = num

num == num1
identical(num,num1)

num = 2
num -> num2

## OBS: == é um comparador, para ver se dois objetos são iguais.
num == num1
identical(num,num1)

num == num2
identical(num,num2)

assign("n", 2L)

num == num2
identical(num,n)

teste <- num + num1 + curso

FALSE == F; F == 0
TRUE == T; T == 1

num3 = 2.5

class(num)
class(n)
class(num3)

n

# Conversão de objetos

class(as.integer(n))
class(as.double(n))
class(as.numeric(n))


# Ou seja, para a função class temos que double = numeric, mas diferente de integer
# É Assim que o ambiente global do R interpreta o objeto

typeof(num)
typeof(n)
typeof(num3)

typeof(as.integer(n))
typeof(as.double(n))
typeof(as.numeric(n))

# Para a função typeof, que é como os objetos são armazenados não existe mais o tipo de objeto, numeric e sim o double.


# Conversão de tipos 
as.double(x)
as.integer(curso)

#Fator

fator <- factor("a")
fator1 <- factor(1)
class(fator);class(fator1)
typeof(fator); typeof(fator)
unclass(fator)
nlevels(fator)

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

colnames(dados) <- c("Nome","Gastos","Renda","Curso","Time","Renda Comprometida")



