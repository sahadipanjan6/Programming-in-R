# Write a R program to print the numbers from 1 to 100 and print "Fizz" for 
# multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for 
#multiples of both.

vec <- seq(1, 100)
print(vec)

i <- 0
# checking for the multiples
for(i in vec) {
  if(i %% 15 == 0) {
    print(paste("For", i, ":", "FizzBuzz"))
  } else if(i %% 5 == 0) {
    print(paste("For", i, ":", "Buzz"))
  } else if(i %% 3 == 0) {
    print(paste("For", i, ":", "Fizz"))
  } 
}