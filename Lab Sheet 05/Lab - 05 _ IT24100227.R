setwd("C:\\Users\\it24100227\\Desktop\\IT24100227")
DeliveryTimes <- read.table("Exercise - Lab 05.txt",
                           header = TRUE,
                           sep = "",
                           stringsAsFactors = FALSE)
head(DeliveryTimes)


names(DeliveryTimes) <- c("DeliveryTime")
hist(DeliveryTimes$DeliveryTime,
     main = "Histogram fro Delivery Times",
     xlab = "Delivery Time(minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "blue",
     border = "pink")



# Assuming DeliveryTimes is a data frame or list with the first column being numeric
x <- as.numeric(DeliveryTimes[[1]])

# Histogram
hist(x,
     main = "Histogram for Delivery Times",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "blue",
     border = "pink"
)


h <- hist(x, breaks = seq(20, 70, length.out = 10), right = FALSE, plot = FALSE)
cf <- cumsum(h$counts)


plot(h$breaks[-1], cf,
     type = "o",
     main = "Ogive (Cumulative Frequency Polygon)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     pch = 16
)

points(h$breaks[1], 0, pch = 16)


lines(c(h$breaks[1], h$breaks[-1]), c(0, cf))


