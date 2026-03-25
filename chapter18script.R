general <- c(2,71)
pos <- c(23, 50)
neg <- c(36, 37)
table_df <- data.frame(general, pos, neg)
chisq.test(table_df)

#Pearson's Chi-squared test

#data:  table_df
#X-squared = 40.128, df = 2, p-value = 1.933e-09


died <- c(12,5)
lived <- c(18,140)
test <- data.frame(died, lived)
chi <-chisq.test(test)
chi


Pearson's Chi-squared test with Yates' continuity correction

data:  test
X-squared = 33.812, df = 1, p-value = 6.07e-09

chi$expected


> chi$expected
died     lived
[1,]  2.914286  27.08571
[2,] 14.085714 130.91429



data_matrix <- matrix(c(12,5, 18, 140), nrow = 2, byrow = TRUE)
data_matrix

> data_matrix
[,1] [,2]
[1,]   12    5
[2,]   18  140

chisq.test(data_matrix)$expected

> chisq.test(data_matrix)$expected
[,1]      [,2]
[1,]  2.914286  14.08571
[2,] 27.085714 130.91429


#Non-parametric test for when chi square test basic conditions are not met
fisher.test(data_matrix)


#Fisher's Exact Test for Count Data

data:  data_matrix
p-value = 2.654e-07
alternative hypothesis: true odds ratio is not equal to 1
95 percent confidence interval:
  5.227173 73.657511
sample estimates:
odds ratio 
  18.10903 

# Calculate the FE p-value
choose(17,12)*choose(158,18)/choose(175,30)


> # Calculate the FE p-value
  > choose(17,12)*choose(158,18)/choose(175,30)
[1] 2.526053e-07


## RR developing cancer for former and current middle-aged male smokers

RR <- (89/6152)/(37/5748)
RR

[1] 2.247443

# calculate the odds ratio

OR <- (89*5711)/(37*6063)
OR
[1] 2.265755






