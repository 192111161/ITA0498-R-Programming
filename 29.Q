library(datasets)

iris <- datasets::iris

cat("Dataset Dimension:", dim(iris), "\n")
cat("Dataset Structure:\n")
str(iris)
cat("Summary Statistics:\n")
summary(iris)
cat("Standard Deviation of Features:\n")
print(apply(iris[, 1:4], 2, sd))

group_stats <- aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))
cat("Mean and Standard Deviation grouped by species:\n")
print(group_stats)

quantiles <- apply(iris[, c("Sepal.Width", "Sepal.Length")], 2, quantile, probs = c(0.25, 0.5, 0.75))
cat("Quantile values:\n")
print(quantiles)

breaks <- quantile(iris$Sepal.Length, probs = seq(0, 1, by = 1/3), na.rm = TRUE)
iris$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = breaks, include.lowest = TRUE, labels = c("Short", "Medium", "Long"))
print(head(iris))

avg_values <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris, FUN = mean)
cat("Average values:\n")
print(avg_values)

avg_mean_values <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris, FUN = mean)
cat("Average mean values:\n")
print(avg_mean_values)

pivot_table <- reshape(avg_values, idvar = "Species", timevar = "Sepal.Length.Cate", direction = "wide")
cat("Pivot Table:\n")
print(pivot_table)
