# Funcoes

df = data.frame(x = rnorm(300), y = rnorm(300), w = rnorm(300))


var_x = sum(df$x-mean(df$x)^2) / length(df$x)
var_y = sum(df$y-mean(df$y)^2) / length(df$y)
var_w = sum(df$w-mean(df$y)^2) / length(df$w)



# Functions btw
variance = function(x){
  sum((x - mean(x))^2)/length(x)
}

variance(df$w)

my_fun = function(a,b){
  z <- a + 1
  return(z+2)
  b+1
}

implies = function(q, p = T){
  !p | q
}


fedora = function(v,w){
  if(missing(w)){
    cat("The version system is", v, "and not working")
  } else {
    cat("The system is working, because w is", w, "and the version is", v)
  }
}
fedora(36)
fedora(21, TRUE)





x = c(-1,1,0,3,6)
f = \(x) x + 1
lapply(x,f) |>  unlist()
