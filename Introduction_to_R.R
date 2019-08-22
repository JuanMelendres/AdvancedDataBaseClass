# for coments
# Primary types
# <- sirve para asignar un valor
# en R todo es un objeto
var.integer <- 10L
var.integer <- as.integer(10)
class(var.integer)
var.integer = 10L # no funciona
10L -> var.integer
10L = var.integer  # no funciona

var.numeric <- 76.6
class(var.numeric)

var.character <- "Juan"
class(var.character)

var.integer * 2

var.logical <- T | TRUE & F | FALSE
class(var.logical)

?complex
var.complex <- complex(real = 10, imaginary = 5)
var.complex <- complex(10,5)
var.complex


# Array
array.0 <- c(1,2,3)
array.0
array.1 <- c(var.integer, var.numeric, var.character, var.logical, var.complex)
var.2 <- as.numeric("34.5")
var.3 <- as.numeric(var.character)
is.na(var.3)
is.null(var.3)
array.2 <- c(1,T,F,0)
array.0
array.0 + 1
array.4 <- c(1000, 1000000)
array.0 + array.4
unknow.outcome <- array.0 + array.4
length(array.0) == length(array.4)
array.5 <- 1:1000
array.5[10]
array.6 <- seq(1, 1000000, by = 3)
array.6 * 4

# Matrix
?matrix
mtx.1 <- matrix(data = 1:100, nrow = 10, ncol = 10)
mtx.2 <- matrix(data = 1:100, nrow = 10, ncol = 10, byrow = T)
mtx.1 == mtx.2
mtx.1 == t(mtx.2)
mtx.1[5,6] == mtx.2[5,6]

# List 
my.data.juanmelendres <- list(name = "juan antonio", age = 22, lastname = "melendres", 
          countryoforigin = "mexico", cityoforigin = "zacatecas", 
          favoritebook = "the c programming language", lengthofhair = 4, familysize = 4, 
          degree = "computer system engineering", heigth = 1.75, fear = "failure",
          nativelanguague = "spanish", semester = 6)

my.data.juanmelendres$age

# data.frames
tec.class.adb <- rbind(my.data.juanmelendres)
#Mac⁩ ▸ ⁨Usuarios⁩ ▸ ⁨juanantoniomelendresvilla⁩ ▸ ⁨Escritorio⁩
setwd("/Users/juanantoniomelendresvilla/Desktop⁩")
load("data.set.sample.R")
data.set.sample
