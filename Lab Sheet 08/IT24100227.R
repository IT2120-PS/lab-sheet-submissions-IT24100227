setwd("C:\\Users\\it24100227\\Desktop\\PS_Lab_08")

weights <- c(2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53, 
             2.57, 2.85, 2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47, 
             2.66, 2.06, 2.41, 2.65, 2.76, 2.43, 2.61, 2.57, 2.73, 2.17, 
             2.67, 2.05, 1.71, 2.32, 2.23, 2.76, 2.7, 2.13, 2.75, 2.2)

#01
pop_mean <- mean(weights)
pop_sd <- sd(weights) * sqrt((length(weights)-1)/length(weights))

pop_mean
pop_sd

#02

set.seed(123)
sample_means <- numeric(25)
sample_sds <- numeric(25)

for(i in 1:25) {
  sample_data <- sample(weights, 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

sample_means
sample_sds

#03

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

mean_of_sample_means
sd_of_sample_means

# Relationships:

theoretical_sd <- pop_sd / sqrt(6)

cat("Population mean:", pop_mean, "\n")
cat("Mean of sample means:", mean_of_sample_means, "\n")
cat("Population standard deviation:", pop_sd, "\n")
cat("Standard deviation of sample means:", sd_of_sample_means, "\n")
cat("Theoretical standard error:", theoretical_sd, "\n")
