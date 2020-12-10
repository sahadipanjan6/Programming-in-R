#  Write a R program to find second highest value in a given vector.

myVector <- c(2, 1, 4, 5, 8, 3)
maxElement <- max(myVector)
secondMaxElement <- 0
i <- 0

for(i in myVector) {
  if(i!=maxElement & i>secondMaxElement) {
    secondMaxElement <- i
  }
}
print(paste("Second Highest Value:", secondMaxElement))