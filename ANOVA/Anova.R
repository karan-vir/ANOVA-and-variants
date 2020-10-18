Car_Insurance <- read_excel("/home/data/BITS/BITS 3-1/Applied Stastical Methods/ANOVA-and-variants/ANOVA/Car Insurance.xlsx")


shapiro.test(Car_Insurance$Chicago)
shapiro.test(Car_Insurance$Houston)
shapiro.test(Car_Insurance$`New York`)
shapiro.test(Car_Insurance$Philadelphia)

cities <- c(rep('Chicago',9),rep('Houston',9),
         rep('New York',9),rep('Philadelphia',9))

prices <- c(Car_Insurance$Chicago,Car_Insurance$Houston,
            Car_Insurance$`New York`,Car_Insurance$Philadelphia)

df <- data.frame(cities,prices)

plot(prices~cities,data = df)

insurance.aov <- aov(prices~cities,data=df)
summary(insurance.aov)


