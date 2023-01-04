p <- read_csv("spain_v_ventas_america.csv")
View(p)



hola <- p %>%
  group_by(loc_zone)%>%
  summarize(renta = mean(renta_media_prov), precio_medio = mean(price))
  


ggplot(data = hola, aes(x=precio_medio, y = renta)) + geom_point(color='red') 
 


hola %>%
  summarize(correlacion = cor(precio_medio, renta))

hola2 <- hola[-11,]

hola2 %>%
  summarize(correlacion = cor(precio_medio, renta))
  
  
  
  
  
  
