# Program to get the first 10 Fibonacci Numbers

a <- 0L
b <- 1L
fibonacci <- c(a, b)
for(i in 3L:10L)
{
  c <- a + b
  fibonacci <- c(fibonacci, c)
  a <- b
  b <- c
}

# displaying the Fibonacci Vector
print("Fibonacci Series: ")
print(fibonacci)