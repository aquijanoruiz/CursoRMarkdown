library(tidyr)
library(readr)

#as.*()--coercion
#num --chr
#para crear factores: factor()

caracter<-c("Regular","Regular","Excelente","Muy Malo")
satisfaccion<-factor(c("Regular","Regular","Excelente","Muy Malo"),levels=c("Excelente","Muybueno","Bueno","Regular","Malo"),order=T)

#coercion de chr a factor

as.factor(caracter)
is.factor(caracter)
class(caracter)#tipo de estructura

#familia parse:*()--pertenece al paquete readr

#parse:segmetar

#parse_number()

"la clase de hoy empieza a las 8 de la noche"

parse_number("la clase de hoy empieza a las 8 de la noche")

"90"
as.numeric("90")

"6_90r"

parse_number("6_90r")

parse_factor(caracter,levels=,ordered=T)

#as.factor () no me permite los argumentos de levels y ordered

str(data_banco)


parse_factor(caracter,levels=c("Regular","Regular","Excelente","Muy Malo"),ordered=T)

