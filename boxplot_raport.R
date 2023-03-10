library(tidyverse)
data1 <- read.csv("population_data.csv")
data1 <- subset(data1, data1$Variant == "Medium" & data1$Time < 2020)
View(data1)
populacja_med <- data1$PopTotal *1000
boxplot(populacja_med, xlab = "ca?a populacja", ylab = "ludno??", main = "Populacja Polski w latach 1950-2019", col="lightskyblue")

kobiety_med <- data1$PopFemale * 1000
print(kobiety_med)
boxplot(kobiety_med, xlab = "Wykres pude?kowy - wariant medium", ylab = "liczba kobiet", main = "Przewidywana liczba kobiet w Polsce w latach 2020-2100", col="lightblue")
mezczyzni_med <- data1$PopMale * 1000
boxplot(kobiety_med, mezczyzni_med, xlab = "  kobiety                                                     m??czy?ni", ylab = "ludno??", main = "Liczba kobiet i m??czyzn w Polsce w latach 1950-2019", col="lightskyblue")
