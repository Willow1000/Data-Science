# Data cleaning
library(dplyr)  # For data manipulation
library(tidyr)  # For data tidying
devtools::install_github("ropensci/plotly")
2

df <- read.csv("your_data.csv")  # Replace 'your_data.csv' with the path to your data file


# View the first few rows of the data frame
head(df)

# Check the structure of the data frame
str(df)

# Check summary statistics of the data frame
summary(df)

# Identify missing values
colSums(is.na(df))


# Remove rows with any missing values
df <- df[complete.cases(df), ]

# Remove columns with any missing values
df <- df[, colSums(is.na(df)) == 0]


# Fill missing values with a specific value (e.g., 0)
df[is.na(df)] <- 0

# Fill missing values with the mean of the column
df <- replace_na(df, list(column_name = mean(df$column_name)))

# Forward-fill missing values (use the last observed value)
df <- tidyr::fill(df, column_name, .direction = "down")

# Backward-fill missing values (use the next observed value)
df <- tidyr::fill(df, column_name, .direction = "up")


# Remove duplicate rows
df <- distinct(df)


# Convert a column to numeric
df$column_name <- as.numeric(df$column_name)

# Convert a column to date
df$date_column <- as.Date(df$date_column)


# Remove specific columns
df <- df[, -c(column1, column2)]



# Rename columns
names(df)[names(df) == "old_name"] <- "new_name"


# Replace specific values in a column
df$column_name <- ifelse(df$column_name == "old_value", "new_value", df$column_name)


# Apply a function to a column
df$column_name <- sapply(df$column_name, your_function)

