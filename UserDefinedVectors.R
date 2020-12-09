# Write a R program to create a vector of a specified type and length. 
# Create vector of numeric, complex, logical and  character types of length 6.

lenOfVector <- strtoi(readline("Enter the length: "))
typeOfVector <- readline("Enter the type: ")
i <- 0
element <- 0

vec <- c()

if(strcmpi(typeOfVector, "numeric") == T) {
  # creating a vector of the type NUMERIC with the specified length
  print("Enter the elements: ")
  for(i in 1:lenOfVector) {
    vec <- c(vec, strtoi(readline()))
  }
  # displaying the numeric vector
  print(vec)
} else if(strcmpi(typeOfVector, "complex") == T) {
  # creating a vector of the type COMPLEX with the specified length
  print("Enter the elements: ")
  for(i in 1:lenOfVector) {
    vec <- c(vec, as.complex(readline()))
  }
} else if(strcmpi(typeOfVector, "logical") == T) {
  #creating a vector of the type LOGICAL with the specified length
  print("Enter the elements: ")
  for(i in 1:lenOfVector) {
    vec <- c(vec, as.logical(readline()))
  }
} else if(strcmpi(typeOfVector, "character") == T) {
  #creating a vector of the type CHARACTER with the specified length
  print("Enter the elements: ")
  for(i in 1:lenOfVector) {
    vec <- c(vec, readline())
  }
}

# finally displaying the manually created vector
print(vec)
print(paste("Type of Vector:", typeof(vec)))




  
  