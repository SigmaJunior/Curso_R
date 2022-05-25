# Importação de Dados

# Declaração de um vetor

v_integer = c(1L, 2L, 3L, 6L, 7L)

v_double = c(1, 2, 3, 4, 5)

v_string = c("1", "2", "3", "4", "5")

v_logical = v_double == v_integer

v_integer =  c(v_integer, 4L, 5L)

v1 <- numeric(0)
v2 <- character(0)
v3 <- logical(0)

# Classes do vetores

class(v_string)
class(v_logical)
class(v_integer)
typeof(v_integer)
class(v_double)
typeof(v_double)

# Operações com vetor e escalar

2*v_double
2*v_integer
v_integer^2
v_double = log(v_integer)
2*v_string
v_integer2 = 2*v_logical

class(v_integer2)
typeof(v_integer2)

# Operações com vetores
v_double + v_double
v_double - v_integer2
v_integer2 * sqrt(v_double)
mean(v_double)*v_double
v_double / v_integer2


# Operações com vetores de tamanhos diferentes (Cuidado!)
v_double + c(v_double, v_double)
v_double + v_integer

# Coerção dos vetores

typeof(v_double)
v_double_to_integer = as.integer(v_double)
typeof(v_double_to_integer)
typeof(v_logical)
typeof(as.integer(v_logical))
typeof(as.double(v_logical))
as.integer(v_string)
typeof(v_string)
v_string2 = c(v_string, "a", "b")
v_string2
as.integer(v_string2)
as.integer(c("a", "b", "c"))

# Priorização das classes

v_mesclado1 = c(1L, 1, 2)
typeof(v_mesclado1)
v_mesclado2 = c(1L, TRUE, FALSE)
typeof(v_mesclado2)
v_mesclado3 = c(1L, TRUE, 1)
typeof(v_mesclado3)
v_mesclado4 = c(1L, TRUE, 1, "1")
typeof(v_mesclado4)

# Criação dos vetores com rep
# rep (vetor ou escalar, quantidade de vezes para repetir)

rep(1, 5)
rep(v_double, 5)
rep(v_double, each= 5)

# Criação de vetores seq e :
# seq(inicial, final, incrementador (padrão é 1))

seq(1,5)
seq(1,10, by = 2)
seq(10,1, by = -1)
seq(from = 1, to = 10, length.out = 15)
## Divide o intervalo em partes iguais dadas pelo argumento length.out
1:5
1:100
 
# Double
v_inicial = c(3,5,7,11)
v_double2 = sqrt(v_inicial)^2
v_double2 
v_double2 - v_inicial
print(v_double2, digits = 16)
print(v_double2, digits = 22)
print(v_double2, digits = 23)

# Operações com NA e Inf 

valores_perdidos = c(3, 5, NA, 2)
typeof(valores_perdidos)
typeof(c(NA, NA, NA))

# Testando se o valor no vetor é na: is.na()

is.na(valores_perdidos)

any(is.na(valores_perdidos))

c(-TRUE,FALSE,TRUE)/FALSE

op_matematica = c(-1,0,1,2)/0

is.na(op_matematica)

is.infinite(op_matematica)

v_perdido_string = c("Curso", "R", "data science", NA)
typeof(v_perdido_string)
v_perdido_string[1]
typeof(v_perdido_string[1])
v_perdido_string[4]
typeof(v_perdido_string[4])
