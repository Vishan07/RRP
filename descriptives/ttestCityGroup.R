data <- trainset

bigcities <- data[data$City.Group=="Big Cities",]
othercities <- data[data$City.Group=="Other",]

t.all <- t.test(data$revenue)
t.big <- t.test(bigcities$revenue)
t.other <- t.test(othercities$revenue)

b1 <- boxplot(data$revenue, bigcities$revenue, othercities$revenue,col=c("red", "royalblue2", "green"), names=c("All Data", "Big Cities", "Others"), ylab="Revenue")

t.total <- t.test(bigcities$revenue, othercities$revenue)