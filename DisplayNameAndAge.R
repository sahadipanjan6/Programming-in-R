#Program1: Write a R program to input name and age of the user and display the values. 
#         Also print the version of R installation.

firstName <- readline("Enter your firstname: ")
lastName <- readline("Enter your lastname: ")
age <- readline("Enter your age: ")
print(paste("Name of the user:", firstName, lastName))
print(paste("Age of the user:", age))
# displaying the version of the R during installation
print(paste("Version of R:", R.version.string))

