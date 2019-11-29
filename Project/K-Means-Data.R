library(fpc)
setwd("/Users/juanantoniomelendresvilla/Documents//AdvancedDataBaseClass")
#read.csv(file = "Project.csv")
patients  <- read.csv(file = "Project.csv", header=T)
View(patients);

patients$date <- NULL;
patients$patient <- NULL;

#patients$height <- NULL;
#patients$weight <- NULL;


calculated_error_v <- vector()

for(i in 1:length(patients)){
  set.seed(1234);
  calculated_error_v[i] <- sum(kmeans(patients, centers = i)$withinss)
}

calculated_error_v;

par(mfrow=c(1,2))
plot(1:length(calculated_error_v), calculated_error_v, type="b", xlab="Numero de clusters",
     ylab="Error Standard")

set.seed(1234);
patients_kmeans <- kmeans(patients, centers =4);
patients_kmeans$centers

plotcluster(patients, patients_kmeans$cluster, clnum=1,method=ifelse(TRUE, "dc","awc"),
            bw=FALSE,ignorepoints=FALSE, ignorenum=0, 
            pointsbyclvecd=TRUE,xlab="X label", ylab="Y label",pch=1, col=NULL)
patients_kmeans$cluster
patients_kmeans$centers
patients_kmeans$size
patients_kmeans$withinss

datawss <- vector()
for(i in 1:5) {
  set.seed(1234)
  datawss[i] <- sum(patients_kmeans(patients_kmeans, centers=i)$withinss)
}
datawss
# PLOT 1
plot(1:7, datawss, type = "b", xlab = "Numero de clusters", ylab = "Error Standard")
# PLOT 2
plot(iris.data[,c("Petal.Length", "Petal.Width") ], col = patients_kmeans$cluster)
