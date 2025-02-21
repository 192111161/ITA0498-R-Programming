library(datasets)

airquality <- datasets::airquality

mean_temp <- sum(airquality$Temp, na.rm = TRUE) / length(na.omit(airquality$Temp))
cat("Mean Temperature:", mean_temp, "\n")

first_five_rows <- head(airquality, 5)
print("First Five Rows:")
print(first_five_rows)

airquality_subset <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Data without Temp and Wind:")
print(head(airquality_subset))

coldest_day <- airquality[which.min(airquality$Temp), ]
print("Coldest Day:")
print(coldest_day)

summary_stats <- summary(airquality)
print("Summary Statistics:")
print(summary_stats)

molten_airquality <- reshape(airquality, varying = list(names(airquality)[1:4]), v.names = "Value", timevar = "Variable", times = names(airquality)[1:4], direction = "long")
print("Molten Data:")
print(head(molten_airquality))

cast_month_day <- aggregate(Value ~ Month + Day + Variable, data = molten_airquality, FUN = mean, na.rm = TRUE)
print("Casted Data by Month and Day:")
print(head(cast_month_day))

monthly_avg <- aggregate(Value ~ Month + Variable, data = molten_airquality, FUN = mean, na.rm = TRUE)
print("Monthly Average:")
print(monthly_avg)
