# Write a R program to create three vectors numeric data, character data and logical data. 
# Display the content of the vectors and their type.

vec1 <- c(1, 2, 3)
vec2 <- c("a", "b", "c")
vec3 <- c(TRUE, FALSE)

# displaying the contents of each vector and their types
print("Numeric Vector: ")
print(vec1)
print(paste("Type of Vec1:", typeof(vec1)))
print("Character Vector: ")
print(vec2)
print(paste("Type of Vec2:", typeof(vec2)))
print("Logical Vector: ")
print(vec3)
print(paste("Type of vec3:", typeof(vec3)))