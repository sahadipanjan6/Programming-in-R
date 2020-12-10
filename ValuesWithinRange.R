# Write a R program to count number of  values in a range in a given vector.

vectorLength <- strtoi(readline("Enter the number of elements: "))
myVector <- c()
i <- 0
lowerBound <- 0
upperBound <- 0

print("Enter the elements one by one...")
for(i in 1:vectorLength) {
  myVector <- c(myVector, as.numeric(readline()))
}

lowerBound <- strtoi(readline("Enter lowerbound: "))
upperBound <- strtoi(readline("Enter upperbound: "))
ct <- 0

for(i in myVector) {
  if(i>=lowerBound & i<=upperBound) {
    ct <- ct + 1
  }
}

# displaying the count
print(paste("Count of Elements:", ct))