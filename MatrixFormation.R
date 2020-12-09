# Write a R program to create three vectors a,b,c with 3 integers. 
# Combine the three vectors to become a 3×3 matrix where each column represents a vector. 
# Print the content of the matrix.

a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)
totalVector <- c(a, b, c)

matrix <- matrix(data = totalVector, nrow = 3, ncol = 3, byrow = TRUE)
print("Output Matrix: ")
print(matrix)