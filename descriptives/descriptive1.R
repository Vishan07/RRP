data = read.csv('/home/hao/Desktop/RRP/train.csv', header=TRUE)

#Cities = data$City.Group
#bigCities = Cities.which('City.Group' == 'Big Cities')

bigCities = data[data$City.Group=='Big Cities',]
otherCities = data[data$City.Group=='Other',]

a = summary(data$revenue)
b = summary(bigCities$revenue)
c= summary(otherCities$revenue)

#boxplots
boxplot(bigCities$revenue, las=2, col="royalblue2", names="Revenue", xlab="Revenue in Lira (big cities)")
#boxplot(otherCities$revenue)
#boxplot(otherCities$revenue, las=2, col="Green", names="Revenue", xlab="Revenue in Lira (other cities)")
