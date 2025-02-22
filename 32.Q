library(ggplot2)

df <- airquality

missing_percent <- colSums(is.na(df)) / nrow(df) * 100

for (col in names(df)) {
  if (missing_percent[col] < 10) {
    df <- df[!is.na(df[[col]]), ]
  } else {
    df[[col]][is.na(df[[col]])] <- mean(df[[col]], na.rm = TRUE)
  }
}

df <- na.omit(df[, c("Ozone", "Solar.R")])
model <- lm(Ozone ~ Solar.R, data = df)

ggplot(df, aes(x = Solar.R, y = Ozone)) +
  geom_point(color = "blue") +
  geom_abline(slope = coef(model)[2], intercept = coef(model)[1], color = "red") +
  labs(title = "Ozone vs Solar Radiation with Regression Line",
       x = "Solar Radiation (Solar.R)",
       y = "Ozone Levels") +
  theme_minimal()
