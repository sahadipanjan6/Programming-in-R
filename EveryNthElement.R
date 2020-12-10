# Write a R program to extract every nth element of a given vector.

lowerBound <- strtoi(readline("Enter lowerbound: "))
upperBound <- strtoi(readline("Enter upperbound: "))
valueOfN <- strtoi(readline("Enter value of N: "))
myVector <- seq(from = lowerBound, to = upperBound, by = valueOfN)
print(paste("Every", valueOfN, "'th element: "))
print(myVector)
