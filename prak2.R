# SOAL NO. 1
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
# 1a
sd (x-y)
# 1b
t.test(y, x, paired = TRUE)

#SOAL NO. 2
install.packages("BSDA")
library(BSDA)
#2b
xbar = 23500
sd = 3900
n = 100
mu = 20000
zsum.test(xbar, sd, n, alternative = "greater", mu = 20000)

#SOAL NO. 3
#3b
xbar1 = 3.64
s1 = 1.67
n1 = 19
xbar2 = 2.79
s2 = 1.32
n2 = 27
tsum.test(xbar1, s1, n1, xbar2, s2, n2, alternative = "greater", var.equal = TRUE)
#3c
install.packages("mosaic")
library(mosaic)
df = 2
plotDist(dist = 't', df, col = "red")
#3d
df = 2
qchisq(p = 0.05, df, lower.tail = FALSE)


#SOAL NO. 4
#4a
oneWayAnova = read.table(file = "C:/Users/rayss/Downloads/onewayanova.txt", header = TRUE) 
attach(oneWayAnova)
names(oneWayAnova)
oneWayAnova$Group <- as.factor(oneWayAnova$Group)
oneWayAnova$Group = factor(oneWayAnova$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
class(oneWayAnova$Group)
Group1 <- subset(oneWayAnova, Group == "Kucing Oren")
Group2 <- subset(oneWayAnova, Group == "Kucing Hitam")
Group3 <- subset(oneWayAnova, Group == "Kucing Putih")
qqnorm(Group1$Length)
qqline(Group1$Length)
qqnorm(Group2$Length)
qqline(Group2$Length)
qqnorm(Group3$Length)
qqline(Group3$Length)
#4b
bartlett.test(Length~Group, data = oneWayAnova)
#4c
model1 = lm(Length~Group, data = oneWayAnova)
anova(model1)
#4e
TukeyHSD(aov(model1))
#4f
install.packages("ggplot2")
library("ggplot2")
ggplot(oneWayAnova, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "white", color = c("#E7B800", "#000000", "#808080")) +
  scale_x_discrete() + xlab("Group") + ylab("Length (cm)")


#SOAL NO. 5
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
GTL <- read.csv(file = "C:/Users/rayss/Downloads/GTL.csv")
head(GTL)
str(GTL)
#5a
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
#5b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
#5c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
#5d
tukey <- TukeyHSD(anova)
print(tukey)
#5e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
