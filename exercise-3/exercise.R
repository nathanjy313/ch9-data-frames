# Exercise 3: working with built-in data sets

# Load R's "USPersonalExpenditure" dataset using the `data()` function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable `USPersonalExpenditure` is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can pass the USPersonalExpenditure variable as an argument to the
# `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
updated_uspe <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(updated_uspe)

## Consider: why are they so strange? Think about whether you could use a number 
## like 1940 with dollar notation!

# What are the row names of your dataframe?
rownames(updated_uspe)


# Add a column "category" to your data frame that contains the rownames
updated_uspe$category <- rownames(updated_uspe)
View(updated_uspe)
# How much money was spent on personal care in 1940?
pc_1940 <- updated_uspe['Personal Care', 'X1940']
pc_1940
# How much money was spent on Food and Tobacco in 1960?
food_a_tobacco <- updated_uspe['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
highest_exp_1960 <- updated_uspe$category[updated_uspe$x1960 == max(updated_uspe$x1960)]


# Define a function `lowest_category` that takes in a year as a parameter, and
# returns the lowest spending category of that year


# Using your function, determine the lowest spending category of each year
# Hint: use the `sapply()` function to apply your function to a vector of years

