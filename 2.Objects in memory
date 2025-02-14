x <- 1:10
y <- data.frame(a = rnorm(10), b = runif(10))
object_list <- ls()
print(object_list)
for (obj in object_list) {
  cat("Details of", obj, ":\n")
  str(get(obj))
  cat("\n")
}
