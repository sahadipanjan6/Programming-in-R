# Write a R program to create a matrix taking a given vector of numbers as input and define the column and row names. 
# Display the matrix.

# forming the vector of numbers
my.vector <- seq(1, 25)

# listing the names of the rows and the columns of the matrix to be formed
name.of.rows <- c("A", "B", "C", "D", "E")
name.of.columns <- c("1", "2", "3", "4", "5")

# creating the matrix with the given vector of numbers in Row-Major Order
my.matrix <- matrix(data = my.vector, nrow = 5, ncol = 5, byrow = T)

# displaying the matrix without row-names and column-names
print("Original Matrix is:- ")
print(my.matrix)

# saving the row-names and column-names of the created matrix
rownames(my.matrix) <- name.of.rows
colnames(my.matrix) <- name.of.columns

# displaying the matrix with row-names and column-names
print("Annotated Matrix is:- ")
print(my.matrix)