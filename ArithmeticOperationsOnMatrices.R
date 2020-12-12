# Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes.

# taking the vectors to build the matrices
my.vector1 <- seq(1L, 6L)
my.vector2 <- seq(7L, 12L)

# building the matrices in row-major order
my.matrix1 <- matrix(data = my.vector1, nrow = 2, ncol = 3, byrow = T)
my.matrix2 <- matrix(data = my.vector2, nrow = 2, ncol = 3, byrow = T)

# displaying the original matrices
print("1st Matrix is:- ")
print(my.matrix1)
print("2nd Matrix is:- ")
print(my.matrix2)

# performing addition of the matrices
print("Addition of the matrices:- ")
print(my.matrix1 + my.matrix2)

# performing subtraction of the matrices
print("Subtraction of the matrices:- ")
print(my.matrix1 - my.matrix2)

# performing multiplication of the matrices
print("Multiplication of the matrices:- ")
print(my.matrix1 * my.matrix2)

# performing division of the matrices
print("Division of the matrices:- ")
print(my.matrix1 / my.matrix2)