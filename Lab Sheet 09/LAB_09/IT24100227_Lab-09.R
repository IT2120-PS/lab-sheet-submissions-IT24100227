setwd("C:\\Users\\BINARA\\Desktop\\LAB_09")
getwd()

# Part 1: Generate a random sample of size 25 from Normal(mean=45, sd=2)
baking_time <- rnorm(25, mean = 45, sd = 2)

# Part 2: One-sample t-test (left-tailed)
# H0: μ ≥ 46 vs H1: μ < 46
test_result <- t.test(baking_time, mu = 46, alternative = "less")

# Display results
print(test_result)
