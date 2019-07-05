####Practica6####
####1####

random.number = numeric(20)
random.seed=17218
for (j in 1:20) {
  random.seed = (172*random.seed)%%30307
  random.number[j]= random.seed/30307
}
random.number

####2####

random.number = numeric(20)
random.seed=2018
for (j in 1:20) {
  random.seed = (171*random.seed)%%32767 
  random.number[j]= random.seed/32767 
}
random.number


####3####
#A
set.seed(32078)
runif(10, min = 0, max = 1)

#B
set.seed(32078)
runif(10, min = 3, max = 7)

#C
set.seed(32078)
runif(10, min = -2, max = 2)

####4####
#A
u = numeric(1000)
set.seed(19908)
u <- runif(1000)
u

media <- sum(u)/length(u)
media
varianza <- sum((u-media)^2)/length(u)
varianza
desviacionE <- sqrt(varianza)
desviacionE

#B
mean(u)
var(u)
sd(u)

#C
table(u<0.6)
prop.table(table(u<0.6))

#D
mean(1/(u+1))

#e
hist(u)
hist(1/(u+1))


####5####
#A
r<- runif(1000,min=3.7, max=5.8)
#media
media <- sum(r)/length(u)
media
mean(r)
#Varianza
varianza <- sum((r-media)^2)/length(u)
varianza
var(r)
#Desviacion estandar
desviacionE <- sqrt(varianza)
desviacionE
sd(r)

#B
number <-sample(r,1)
qunif(number,min = 4, max = 5)

####6####
#A
u1 <- runif(1000, min = 0, max = 1)
u2 <- runif(1000, min = 0, max = 1)

mean(u1+u2)
mean(u1)+mean(u2)

#B
var(u1+u2)
var(u1)+var(u2)

#C
mean(u1+u2)
mean(u1+u2) <= 1.5

#D
mean(sqrt(u1)+sqrt(u2))
mean(sqrt(u1)+sqrt(u2)) <= 1.5

####7####
#A
u1 <- runif(10000, min = 0, max = 1)
u2 <- runif(10000, min = 0, max = 1)
u3 <- runif(10000, min = 0, max = 1)
mean(u1+u2+u3)

#B
var(u1+u2+u3)
var(u1) + var(u2) + var(u3)

#C
mean(sqrt(u1+u2+u3))

#D
mean(sqrt(u1)+sqrt(u2)+sqrt(u3))
mean(sqrt(u1)+sqrt(u2)+sqrt(u3)) >= 0.8
