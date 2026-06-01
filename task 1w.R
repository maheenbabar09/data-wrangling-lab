# Task 2

# 3. Create the sales_matrix

sales_matrix <- matrix(
  c(120, 135, 140, 150,
    110, 125, 130, 145,
    115, 130, 135, 155),
  nrow = 3,
  byrow = TRUE
)

rownames(sales_matrix) <- c("Store_A", "Store_B", "Store_C")
colnames(sales_matrix) <- c("Q1", "Q2", "Q3", "Q4")

sales_matrix

# 4a. Total sales for each store (row sums)
row_sums <- rowSums(sales_matrix)
row_sums

# 4b. Total sales for each quarter (column sums)
col_sums <- colSums(sales_matrix)
col_sums

# 4c. Overall average of all sales
overall_average <- mean(sales_matrix)
overall_average


# 5. Create the employees data frame

employees <- data.frame(
  Name = c("John", "Sarah", "Mike", "Lisa", "Tom", "Anna"),
  Department = c("Sales", "Marketing", "IT", "Sales", "IT", "Marketing"),
  Years_Service = c(3, 5, 2, 8, 4, 1),
  Salary = c(48000, 62000, 55000, 71000, 59000, 45000),
  stringsAsFactors = FALSE
)

employees


# 6a. Entire row for Lisa (two methods)

# Method 1: Logical indexing
employees[employees$Name == "Lisa", ]

# Method 2: Row number indexing
employees[4, ]


# 6b. Salary column as a vector (two methods)

# Method 1: $
employees$Salary

# Method 2: [[ ]]
employees[["Salary"]]


# 6c. All employees in the Sales department (two methods)

# Method 1: Logical indexing
employees[employees$Department == "Sales", ]

# Method 2: subset()
subset(employees, Department == "Sales")


# 6d. Employees with Years_Service > 3 (two methods)

# Method 1: Logical indexing
employees[employees$Years_Service > 3, ]

# Method 2: subset()
subset(employees, Years_Service > 3)


# 7. Add Bonus column (5% of Salary)

employees$Bonus <- employees$Salary * 0.05

employees