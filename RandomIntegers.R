# Write a R program to create a vector which contains 10 random integer values 
# between -50 and +50.

vec1 <- sample(x = -50:50, size = 10, replace = FALSE, prob = NULL)
print(vec1)