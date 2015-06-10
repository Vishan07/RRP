data = read.csv('/home/hao/Desktop/RRP/train.csv', header=TRUE)
strDates = data$Open.Date
dates = as.Date(dates)
sort(dates, decreasing = FALSE)
#x = as.Date(strDates,"%Y/%m/%d")
#y = data$revenue

#plot(x,y,type='p', col="blue")

#format(dates, format="%Y %m %d")
#as.character(dates)
