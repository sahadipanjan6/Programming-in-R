# Write a R program to find common elements from multiple vectors.

myVector1 <- seq(1, 10)
myVector2 <- seq(from = 1, to = 10, by = 3)
print("Common Elements are: ")
print(intersect(myVector1, myVector2))