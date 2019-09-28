# Activity
getwd()
setwd("/Users/juanantoniomelendresvilla/Downloads")
data.set <- read.csv(file = "DataSet.csv", header=T)
data.set <- data.set[, c("age", "semester")]

data.set[-c(1), ]

data.set <- data.set[-c(1), ]

set.seed(1234)

kmeans.dataset <- kmeans(data.set, centers = 3)
class(kmeans.dataset)
attributes(kmeans.dataset)
kmeans.dataset$cluster
kmeans.dataset$centers
kmeans.dataset$size
kmeans.dataset$withinss

datawss <- vector()
for(i in 1:3) {
  set.seed(1234)
  datawss[i] <- sum(kmeans(iris.data, centers=i)$withinss)
}

datawss
# PLOT 1
plot(1:7, wss, type = "b", xlab = "Numero de clusters", ylab = "Error Standard")
# PLOT 2
plot(iris.data[,c("Petal.Length", "Petal.Width") ], col = kmeans.dataset$cluster)