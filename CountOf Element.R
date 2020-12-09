# Write a R program to count the specific value in a given vector.

myVector <- c(rep(seq(1, 3), 3))
element <- as.numeric(readline("Enter the number: "))
ct <- 0
i <- 0

for(i in myVector) {
  if(i == element) {
    ct <- ct + 1
  }
}

print(paste("Count of", element, "is", ct))