fibonacci <- function(n) {
  fib_sequence <- numeric(n)
  fib_sequence[1] <- 0
  fib_sequence[2] <- 1
  
  for (i in 3:n) {
    fib_sequence[i] <- fib_sequence[i - 1] + fib_sequence[i - 2]
  }
  
  return(fib_sequence)
}

fibonacci_numbers <- fibonacci(10)
print(fibonacci_numbers)
