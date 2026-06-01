# Task 1

# 1a. Create a numeric vector named temperatures
temperatures <- c(72, 68, 75, 80, 74, 78, 71)

# 1b. Create a character vector named cities
cities <- c("New York", "Los Angeles", "Chicago",
            "Houston", "Phoenix", "Philadelphia",
            "San Antonio")

# 1c. Create a logical vector named is_warm
is_warm <- temperatures > 73

# Display the vectors
temperatures
cities
is_warm

# 2. Inspect the temperatures vector

# class() tells the data type of the object
class(temperatures)

# length() tells the number of elements in the vector
length(temperatures)

# str() shows the structure, type, and contents of the object
str(temperatures)