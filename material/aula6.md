

# Aula 6

## Funções



Todos as variáveis que criamos precisam estar guardadas em algum lugar e
esse “algum lugar” é um environment (ambiente). Usualmente não
precisamos lidar com enviroments, pois objetos criados são designados
para o `global enviroment`. Quando criamos funções elas automaticamente
criam enviroments.

Sintaxe

``` r
name_func = function(param1, param2){
 some code here
}
```

-   `name_func` é o nome da função;
-   `function` declara a chamada para criação de função;
-   `param` são parâmetros (entrada) da função;
-   `{` declara o início do enviroment da função  
-   `}` declara o fim

Todo objeto criado dentro do escopo da função é mantido no ambiente da
função, a menos que se exija o contrário.  
Utiliza-se `return` para declarar o objeto a ser retornado pela função,
por padrão a linguagem R retorna a última linha definida na função, ou
seja, não é necessário o uso de `return` se você deseja que a ultima
linha seja retornada.

**Cuidado:** Funções são chamadas usando `()` e  `[]` são para indices.  
Por exemplo, o que a seguinte função vai retornar?

``` r
my_fun = function(a,b){
z <- a + 1
return(z+2)
b+1
}
```
## Parâmetros

Parâmetros são a entradas funções, eles possuem certas peculiaridades:

* Um parâmetro só é avaliado se for chamado no escopo da função
* Não é necessário escrever o nome do parâmetro se escrita for em  ordem  
* Parâmetros podem ser ter valores default  
Exemplo
```r
implication = function(q, p = T, j = p & q){
  !p | q
}
implication(T)
#> [1] TRUE
```
Quando escrevemos `implication(T)`, estamos dizendo que o primeiro parâmetro da função é `T` e pela declaração da função o parâmetro  `p` tem valor padrão `T` assim:  
  `implication(T)== implication(q = T, p = T)`  
Nota-se também que o parâmetro `j` não foi utilizado internamente na função.

* Funções podem também ter como parâmetro `n` argumentos, onde `n` é definido pelo usuário, esses "tipos" de parâmetro são declarados usando `...`

```r
almost_zero = function(...){
sum(c(...) - mean(c(...)))
}

almost_zero(1,2,3)
#> [1] 0
almost_zero(1,2,3,5,6,8)
#> [1] -1.776357e-15
```
* Funções podem também ter argumentos opcionais
```r
fedora = function(v,w){
  if(missing(w)){
    cat("The version system is", v, "and not working")
  } else {
    cat("The system is working, because w is", w, "and the version is", v)
  }
}
fedora(36)
#> The version system is 36 and not working
fedora(21, TRUE)
#> The system is working, because w is TRUE and the version is 21

```
## Pacotes
