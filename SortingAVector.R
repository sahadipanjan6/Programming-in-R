# Write a R program to sort a Vector in ascending and descending order.

lengthOfVector <- strtoi(readline("Enter number of elements: "))
typeOfVector <- readline("Enter the type of vector: ")
outputVector <- c()
i <- 0

# constructing the vector from user inputs by checking their types
print("Enter the elements...")
if(strcmpi(typeOfVector, "numeric") == T) {
  for(i in 1:lengthOfVector) {
    outputVector <- c(outputVector, as.numeric(readline()))
  }
} else if(strcmpi(typeOfVector, "complex") == T) {
  for(i in 1:lengthOfVector) {
    outputVector <- c(outputVector, as.complex(readline()))
  }
} else if(strcmpi(typeOfVector, "logical") == T) {
  for(i in 1:lengthOfVector) {
    outputVector <- c(outputVector, as.logical(readline()))
  }
} else if(strcmpi(typeOfVector, "character") == T) {
  for(i in 1:lengthOfVector) {
    outputVector <- c(outputVector, as.character(readline()))
  }
}

# sorting the vector in ascending order and displaying the same
outputVector <- sort(outputVector, decreasing = FALSE)
print("Output Vector will be: ")
print(outputVector)
