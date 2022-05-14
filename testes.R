#Criando um Data Frame

df <- data.frame(aleatorio = rnorm(1000),
                 sexo = rep(c(1,2),500),
                 numeros = seq(1,1000),
                 sequencia = 1001:2000,
                 impares = seq(1, 2000, by=2),
                 diminuindo = seq(2000, 2, by=-2))

write.table(df, "exportado.txt")
write.csv(df, "exportado.csv")
xlsx::write.xlsx(df, "exportado.xlsx")
system.time(read.csv('exportado.csv'))
system.time(read.delim('exportado.txt', sep = ' '))
system.time(readxl::read_xlsx('exportado.xlsx'))        
readxl::read_xlsx('exportado.xlsx') -> df3
read.delim('exportado.txt', sep = ' ') -> df2
read.csv('exportado.csv') -> df1
lobstr::obj_size(df1)
lobstr::obj_size(df2)
lobstr::obj_size(df3)
