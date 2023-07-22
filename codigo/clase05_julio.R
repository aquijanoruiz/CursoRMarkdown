library(magrittr)

paquetes<- c("openxlsx","tidyverse","magrittr","readr")

lapply(paquetes,library,character.only=TRUE)

#tIDYVERSE---

#sintaxis:%>%(shortcut:ctrl+shift+m)

data_banco %>% head()

head(data_banco)#rbase

data_banco %>% names %>% length()
  names(data_banco)
  
length(names(data_banco)) #r base

#sintaxis r base 

data_banco[,5]

data_banco[,c("sucursal","transaccion")]

#[] sirven para extraer filas y columnas

#verbos y acciones usuales del dplyr

library(dplyr)

#filter:() filtra las filas del objeto

data_banco %>% filter(Sucursal==62)

filter(data_banco,Sucursal==62)

data_banco %>% filter(Sucursal==85) %>% View()

data_banco_2<-data_banco %>% filter(Sucursal==85) %>% View()

#operador o: (pleca)


#entregame las transacciones de las sucursales 62-85

data_banco %>% filter(Sucursal==62 | Sucursal==85) %>% View

#operador %in%

data_banco %>% filter(Sucursal %in% c(62,85)) %>% View("operador_in")

# filtrado por excepcion

data_banco %>% filter(!(Sucursal %in% c(62,85)) %>% View("excepcion")

#filtrado para 2 variables
data_banco %>% filter(Sucursal %in% c(62,85),Tiempo_Servicio_seg>100)%>% View("filtrado2")

#filtrado  3 variables:Sucursal 85-tiempo serv seg menor a 100 - satisfaccion : muy buenas 
data_banco %>% filter(Sucursal %in% c(85)& Tiempo_Servicio_seg<100 & Satisfaccion == "Muy Bueno") %>% View()

#operador & data_banco %>% filter()#minitarea


#seleccionar_select()----
data_banco [,5] #rbase

data_banco %>% select(Sucursal,Transaccion) %>% View("select_one")

data_banco %>% select(c(2,4,6)) %>% View()

# seleccion por excepcion

data_banco %>% select(-Cajero) %>% View("excp1")
data_banco %>% select(!c("Cajero","Satisfaccion")) %>% View()

#select() y sus funciones auxiliares

#contains()

data_banco %>% select(contains("Tra")) %>% View("contains")

#minitarea 2: replique el ejemplo de contains() con "on"

data_banco %>% select(contains("on")) %>% View()

data_banco %>% select(starts_with("s")) %>% View()

data_banco %>% select(contains("Tra"),ends_with("on")) %>% View("combined")

#mover columnas con select()

data_banco %>% select(Monto,Transaccion,everything()) %>% View("combined2")
data_banco %>% select_all(toupper) %>% View()


