setwd("C:\\Users\\it24100227\\Desktop\\Lab 04-20250819")

branch_data<-read.table("Exercise.txt",header=TRUE,sep=",")
fix(branch_data)
attach(branch_data)
str(branch_data)

boxplot(branch_data$Sales, main = "Boxplot of Sales",ylab= "sales")


quantile(branch_data$Advertising_X2)
summary(branch_data$Advertising_x2)
IQR(branch_data$Advertising_x2)

find_outliers <- function(x){
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  IQR <- q3 - q1
  lower <- q1 - 1.5 * IQR
  upper <- q3 + 1.5 * IQR
  return(x[x < lower | x > upper])
}

find_outliers(branch_data$Years)
