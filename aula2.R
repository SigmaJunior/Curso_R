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
dados <- read.table('docs/Aula2/dados.txt', h = TRUE,fileEncoding='UTF-8')

# Iremos querer ver renda comprometida