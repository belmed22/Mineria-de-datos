# importar librerias
library(ggplot2)
library(dplyr)

# importar dataset iris
df <- read.csv("C:\\Users\\hecto\\Downloads\\datasets_19_420_Iris.csv")

# visualizacion de los primeros datos del dataset y entendiendo la data
str(df)
summary(iris)
head(df$Id)

# Definimos numero de clusters
K <- c(1,2,3)

# Visualizacion de los datos
view <- df %>% 
  ggplot(aes(x = SepalLengthCm, y = SepalWidthCm)) + geom_point()
view

# primer paso sacar distancias de cada uno de los clusters iniciales
distancia <- list(1,2,3)
for (var in K) {
  for (row in 1:nrow(df)) {
    len <- df[row, "SepalLengthCm"]
    wid <- df[row, "SepalWidthCm"]
    distancia[[var]][row] <- ((df[var, "SepalLengthCm"] - len)^2+(df[var, "SepalWidthCm"] - wid)^2)^0.5
  }
}
distancia

# creamos la columna para la clasificacion
data <- df %>%
  mutate(cluster = "")
data


# Comparacion de distancias para asignar un cluster
for (row in 1:nrow(df)) {
  if (distancia[[1]][row] < distancia[[2]][row]) {
    if (distancia[[1]][row] < distancia[[3]][row]) {
      # pernetence al closter 1
      data$cluster[row] <- '1'
      
    }else{
      # pertenece al cluster 3
      data$cluster[row] <- '3'
    }
  }else{
    if (distancia[[2]][row] < distancia[[3]][row]) {
      # pertenece al cluster 2
      data$cluster[row] <- '2'
    }else{
      # pertenece al cluster 3
      data$cluster[row] <-'3'
    }
  }
}


# calculos para los nueevos valores de centroides
c1xa<- 0; c1ya<- 0; c2xa<- 0; c2ya<- 0; c3xa<- 0; c3ya <- 0
repeat {
  
  c1x <- data %>%
    filter(cluster == "1") %>%
    select(SepalLengthCm)
  c1xS <- c1x %>% 
    sum()
  c1xD <- c1x %>%
    summarize(count = n())
  c1x <- c1xS / c1xD
  
  c1y <- data %>%
    filter(cluster == "1") %>%
    select(SepalWidthCm)
  c1yS <- c1y %>% 
    sum()
  c1yD <- c1y %>%
    summarize(count = n())
  c1y <- c1yS / c1yD
  
  c2x <- data %>%
    filter(cluster == "2") %>%
    select(SepalLengthCm)
  c2xS <- c2x %>% 
    sum()
  c2xD <- c2x %>%
    summarize(count = n())
  c2x <- c2xS / c2xD
  
  c2y <- data %>%
    filter(cluster == "2") %>%
    select(SepalWidthCm)
  c2yS <- c2y %>% 
    sum()
  c2yD <- c2y %>%
    summarize(count = n())
  c2y <- c2yS / c2yD
  
  c3x <- data %>%
    filter(cluster == "3") %>%
    select(SepalLengthCm)
  c3xS <- c3x %>% 
    sum()
  c3xD <- c3x %>%
    summarize(count = n())
  c3x <- c3xS / c3xD
  
  c3y <- data %>%
    filter(cluster == "3") %>%
    select(SepalWidthCm)
  c3yS <- c3y %>% 
    sum()
  c3yD <- c3y %>%
    summarize(count = n())
  c3y <- c3yS / c3yD
  
  
  distancia <- list(1,2,3)
  
  for (row in 1:nrow(df)) {
    len <- df[row, "SepalLengthCm"]
    wid <- df[row, "SepalWidthCm"]
    distancia[[1]][row] <- ((c1x - len)^2+(c1y - wid)^2)^0.5
    distancia[[2]][row] <- ((c2x - len)^2+(c2y - wid)^2)^0.5
    distancia[[3]][row] <- ((c3x - len)^2+(c3y - wid)^2)^0.5
  }
  
  # Comparacion de distancias para asignar un cluster
  for (row in 1:nrow(df)) {
    if (distancia[[1]][[row]][1] < distancia[[2]][[row]][1]) {
      if (distancia[[1]][[row]][1] < distancia[[3]][[row]][1]) {
        # pernetence al closter 1
        data$cluster[row] <- '1'
        
      }else{
        # pertenece al cluster 3
        data$cluster[row] <- '3'
      }
    }else{
      if (distancia[[2]][[row]][1] < distancia[[3]][[row]][1]) {
        # pertenece al cluster 2
        data$cluster[row] <- '2'
      }else{
        # pertenece al cluster 3
        data$cluster[row] <-'3'
      }
    }
  }
  
  if (c1x == c1xa && c1y == c1ya && c2x == c2xa && c2y == c2ya && c3x == c3xa && c3y == c3ya){
    break
    print("break")
  }
  
  c1xa <- c1x; c1ya <- c1y; c2xa <- c2x; c2ya <- c2y; c3xa <- c3x; c3ya <- c3y
  
}




# visualizacion final de los clusters
lastview <- data %>% 
  ggplot(aes(x = SepalLengthCm, y = SepalWidthCm, col= cluster)) + geom_point()
lastview

#
# ahora los clusters con los petalos
# Definimos numero de clusters
#
#

K <- c(1,2,3)

# Visualizacion de los datos
view <- df %>% 
  ggplot(aes(x = PetalLengthCm, y = PetalWidthCm)) + geom_point()
view

# primer paso sacar distancias de cada uno de los clusters iniciales
distancia <- list(1,2,3)
for (var in K) {
  for (row in 1:nrow(df)) {
    len <- df[row, "PetalLengthCm"]
    wid <- df[row, "PetalWidthCm"]
    distancia[[var]][row] <- ((df[var, "PetalLengthCm"] - len)^2+(df[var, "PetalWidthCm"] - wid)^2)^0.5
  }
}
distancia

# creamos la columna para la clasificacion
data <- df %>%
  mutate(cluster = "")
data


# Comparacion de distancias para asignar un cluster
for (row in 1:nrow(df)) {
  if (distancia[[1]][row] < distancia[[2]][row]) {
    if (distancia[[1]][row] < distancia[[3]][row]) {
      # pernetence al closter 1
      data$cluster[row] <- '1'
      
    }else{
      # pertenece al cluster 3
      data$cluster[row] <- '3'
    }
  }else{
    if (distancia[[2]][row] < distancia[[3]][row]) {
      # pertenece al cluster 2
      data$cluster[row] <- '2'
    }else{
      # pertenece al cluster 3
      data$cluster[row] <-'3'
    }
  }
}


# calculos para los nueevos valores de centroides
c1xa<- 0; c1ya<- 0; c2xa<- 0; c2ya<- 0; c3xa<- 0; c3ya <- 0
repeat {
  
  c1x <- data %>%
    filter(cluster == "1") %>%
    select(PetalLengthCm)
  c1xS <- c1x %>% 
    sum()
  c1xD <- c1x %>%
    summarize(count = n())
  c1x <- c1xS / c1xD
  
  c1y <- data %>%
    filter(cluster == "1") %>%
    select(PetalWidthCm)
  c1yS <- c1y %>% 
    sum()
  c1yD <- c1y %>%
    summarize(count = n())
  c1y <- c1yS / c1yD
  
  c2x <- data %>%
    filter(cluster == "2") %>%
    select(PetalLengthCm)
  c2xS <- c2x %>% 
    sum()
  c2xD <- c2x %>%
    summarize(count = n())
  c2x <- c2xS / c2xD
  
  c2y <- data %>%
    filter(cluster == "2") %>%
    select(PetalWidthCm)
  c2yS <- c2y %>% 
    sum()
  c2yD <- c2y %>%
    summarize(count = n())
  c2y <- c2yS / c2yD
  
  c3x <- data %>%
    filter(cluster == "3") %>%
    select(PetalLengthCm)
  c3xS <- c3x %>% 
    sum()
  c3xD <- c3x %>%
    summarize(count = n())
  c3x <- c3xS / c3xD
  
  c3y <- data %>%
    filter(cluster == "3") %>%
    select(PetalWidthCm)
  c3yS <- c3y %>% 
    sum()
  c3yD <- c3y %>%
    summarize(count = n())
  c3y <- c3yS / c3yD
  
  
  distancia <- list(1,2,3)
  
  for (row in 1:nrow(df)) {
    len <- df[row, "PetalLengthCm"]
    wid <- df[row, "PetalWidthCm"]
    distancia[[1]][row] <- ((c1x - len)^2+(c1y - wid)^2)^0.5
    distancia[[2]][row] <- ((c2x - len)^2+(c2y - wid)^2)^0.5
    distancia[[3]][row] <- ((c3x - len)^2+(c3y - wid)^2)^0.5
  }
  
  # Comparacion de distancias para asignar un cluster
  for (row in 1:nrow(df)) {
    if (distancia[[1]][[row]][1] < distancia[[2]][[row]][1]) {
      if (distancia[[1]][[row]][1] < distancia[[3]][[row]][1]) {
        # pernetence al closter 1
        data$cluster[row] <- '1'
        
      }else{
        # pertenece al cluster 3
        data$cluster[row] <- '3'
      }
    }else{
      if (distancia[[2]][[row]][1] < distancia[[3]][[row]][1]) {
        # pertenece al cluster 2
        data$cluster[row] <- '2'
      }else{
        # pertenece al cluster 3
        data$cluster[row] <-'3'
      }
    }
  }
  
  if (c1x == c1xa && c1y == c1ya && c2x == c2xa && c2y == c2ya && c3x == c3xa && c3y == c3ya){
    break
    print("break")
  }
  
  c1xa <- c1x; c1ya <- c1y; c2xa <- c2x; c2ya <- c2y; c3xa <- c3x; c3ya <- c3y
  
}




# visualizacion final de los clusters
lastview <- data %>% 
  ggplot(aes(x = PetalLengthCm, y = PetalWidthCm, col= cluster)) + geom_point()
lastview
