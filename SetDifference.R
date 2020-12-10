# Write a R program to find the elements of a given vector that are not in another 
# given vector.

vector1 <- seq(1, 20)
vector2 <- seq(from = 2, to = 20, by = 3)
print("Set Difference: ")
print(setdiff(vector1, vector2))


