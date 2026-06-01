# Create employees data frame

employees <- data.frame(
  Name = c("John", "Sarah", "Mike", "Lisa", "Tom", "Anna"),
  Department = c("Sales", "Marketing", "IT", "Sales", "IT", "Marketing"),
  Years_Service = c(3, 5, 2, 8, 4, 1),
  Salary = c(48000, 62000, 55000, 71000, 59000, 45000)
)

# Add Bonus column
employees$Bonus <- employees$Salary * 0.05

# Task 3

# a. Mean salary
mean(employees$Salary)

# b. Median years of service
median(employees$Years_Service)

# c. Standard deviation of salary
sd(employees$Salary)

# d. Minimum and maximum salary
min(employees$Salary)
max(employees$Salary)

# Custom function
stats_summary <- function(x) {
  c(
    Min = min(x),
    Max = max(x),
    Mean = mean(x),
    Median = median(x),
    Length = length(x)
  )
}

# Test on Salary column
stats_summary(employees$Salary)