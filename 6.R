sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n)  
  primes[1] <- FALSE      
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[seq(i^2, n, by = i)] <- FALSE 
    }
  }
  return(which(primes))  
}
n <- 100
prime_numbers <- sieve_of_eratosthenes(n)
print(prime_numbers)
