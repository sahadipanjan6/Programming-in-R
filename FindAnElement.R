# Write a R program to test whether a given vector contains a specified element.

# taking a vector by hard-coding
myVector <- c(1, 2, 3, 4, 5)

checkNumber <- as.numeric(readline("Enter the element to be checked: "))
i <- 0

for(i in unique(myVector)) {
  if(i == checkNumber) {
    print(paste(checkNumber, "is present in the given vector"))
  }
}

