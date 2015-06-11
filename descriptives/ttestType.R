data <- trainset

foodcourt <- data[data$Type=="FC",]
inline <- data[data$Type=="IL",]
drivethru <- data[data$Type=="DT",]

t.all <- t.test(data$revenue)
t.inline <- t.test(inline$revenue)
t.foodcourt <- t.test(foodcourt$revenue)
t.drivethru <- t.test(drivethru$revenue)

b1 <- boxplot(data$revenue, foodcourt$revenue, inline$revenue, drivethru$revenue, col=c("red", "purple", "yellow", "black"), names=c("All Data", "Foodcourt", "Inline", "Drivethru"), ylab="Revenue")

t.foodcourtinline <- t.test(foodcourt$revenue, inline$revenue)
