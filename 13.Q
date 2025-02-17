set.seed(123)  
numbers <- round(rnorm(100, mean = 50, sd = 10))  
count <- table(numbers) 
print(count)
