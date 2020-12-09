# Write a R program to find the factors of a given number.

number <- strtoi(readline("Enter any number: "))
i <- 0
factors <- c()

for(i in 2:number-1) {
  if(number %% i == 0) {
    factors <- c(factors, i)
  }
}

# displaying the factors of the given number
print(paste("Factors of", number, "are: "))
print(factors)