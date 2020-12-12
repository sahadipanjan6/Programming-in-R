# Write a R program to create a matrix from a list of given vectors.

# taking a list of vectors of numbers
my.vector1 <- seq(1L, 5L)
my.vector2 <- seq(6L, 10L)
my.vector3 <- seq(11L, 15L)
my.vector4 <- seq(16L, 20L)
my.vector5 <- seq(21L, 25L)

# forming the matrix in ROW-MAJOR fashion from this list of vectors of numbers
my.matrix1 <- rbind(my.vector1, my.vector2, my.vector3, my.vector4, my.vector5)
print("Displaying the matrix row-wise: ")
print(my.matrix1)

# forming the matrix in COLUMN-WISE fashion from this list of vectors of numbers
my.matrix2 <- cbind(my.vector1, my.vector2, my.vector3, my.vector4, my.vector5)
print("Displaying the matrix column-wise: ")
print(my.matrix2)
