# Write a R program to combines two given vectors by columns, rows.

vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10)
vector3 <- cbind(vector1, vector2) # for binding the vectors w.r.t columns
vector4 <- rbind(vector1, vector2) # for binding the vectors w.r.t. rows

# displaying the new vectors

print("After combining column-wise: ")
print(vector3)
print("After combining row-wise: ")
print(vector4)
