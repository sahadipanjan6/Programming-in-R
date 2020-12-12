# Write a R program to access the element at 3rd column and 2nd row, 
# only the 3rd row and only the 4th column of a given matrix.

# forming a vector of numbers
my.vector <- seq(1, 25)

# forming the matrix in Row-Major order from the vector of numbers
my.matrix1 <- matrix(data = my.vector, nrow = 5, ncol = 5, byrow = T)
print("Matrix in Row-Major order is:- ")
print(my.matrix1)

# displaying the particular elements from this matrix
print(paste("Element at 3rd column and 2nd row:", my.matrix1[2, 3]))
print("3rd row of the matrix is:- ")
print(my.matrix1[3, ])
print("4th column of the matrix is:- ")
print(my.matrix1[, 4])

# forming another matrix in Column-Major order from the vector of numbers
my.matrix2 <- matrix(data = my.vector, nrow = 5, ncol = 5, byrow = F)
print("Matrix in Column-Major order is:- ")
print(my.matrix2)

# displaying the particular elements from this matrix
print(paste("Element at 3rd column and 2nd row:", my.matrix2[2, 3]))
print("3rd row of the matrix is:- ")
print(my.matrix2[3, ])
print("4th column of the matrix is:- ")
print(my.matrix2[, 4])

