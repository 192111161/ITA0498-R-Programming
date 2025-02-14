find_factors <- function(n) {
  factors <- c() 
  for (i in 1:n) {
    if (n %% i == 0) { 
      factors <- c(factors, i) 
    }
  }
  return(factors) 
}
number <- 28
factors_of_number <- find_factors(number)
print(paste("Factors of", number, "are:", toString(factors_of_number)))
