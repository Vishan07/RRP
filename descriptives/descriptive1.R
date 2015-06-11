data = read.csv('/home/hao/Desktop/RRP/train.csv', header=TRUE)

#Cities = data$City.Group
#bigCities = Cities.which('City.Group' == 'Big Cities')

bigCities = data[data$City.Group=='Big Cities',]
otherCities = data[data$City.Group=='Other',]

a = summary(data$revenue)
b = summary(bigCities$revenue)
c= summary(otherCities$revenue)

#boxplots
#boxplot(data$revenue, bigCities$revenue, otherCities$revenue,col=c("red", "royalblue2", "green"), names=c("All Data", "Big Cities", "Others"), ylab="Revenue")
#boxplot(otherCities$revenue)
#boxplot(otherCities$revenue, las=2, col="Green", names="Revenue", xlab="Revenue in Lira (other cities)")
#boxplot(data$revenue, las=2, col="Green", names="Revenue", xlab="Revenue in Lira (all data)")


#Pie chart
mytable = table(data$City.Group)
#mytable = table(data$City)
lbls <- paste(names(mytable), "\n",mytable, sep="")
pie(mytable, labels=lbls, main="City Group", col=c("royalblue2","green"))
