library(datasets)

iris <- datasets::iris

set.seed(123)
n <- nrow(iris)
train_index <- sample(1:n, size = 0.8 * n, replace = FALSE)
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

logistic_model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = binomial)

predicted_probs <- predict(logistic_model, newdata = test_data, type = "response")

predicted_classes <- ifelse(predicted_probs > 0.5, levels(iris$Species)[2], levels(iris$Species)[1])
conf_matrix <- table(test_data$Species, predicted_classes)
print("Confusion Matrix:")
print(conf_matrix)

values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

mean_value <- mean(values)
median_value <- median(values)
mode_value <- as.numeric(names(sort(table(values), decreasing = TRUE)[1]))

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")

sorted_values <- sort(unique(values), decreasing = TRUE)
second_highest <- sorted_values[2]
third_lowest <- sorted_values[3]

cat("2nd Highest Value:", second_highest, "\n")
cat("3rd Lowest Value:", third_lowest, "\n")
