# Write a R program to create a matrix taking a given vector of numbers as input. 
# Display the matrix.

# creating the vector
my.vector <- seq(1, 25)

# creating the matrix by taking 5 rows and 5 columns
# displaying the matrix in column-major order
my.matrix <- matrix(data = my.vector, nrow = 5, ncol = 5, byrow = F)
print("Output Matrix in Column-Major order is:- ")
print(my.matrix)

# displaying the matrix in row-major order
my.matrix1 <- matrix(data = my.vector, nrow = 5, ncol = 5, byrow = T)
print("Output Matrix in Row-Major order is:- ")
print(my.matrix1)