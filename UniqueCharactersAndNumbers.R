# Write a R program to get the unique elements of a given string and 
# unique numbers of vector.

stringVector <- c("I", "can", "see", "what", "you", "can't", "see",
                  "but", "they", "can", "see", "what", "we", "both",
                  "can't", "see")
numberVector <- rep(seq(1, 3), 2)
print("Original String Vector: ")
print(stringVector)
print("Unique Strings: ")
print(unique(stringVector))
print("Original Number Vector: ")
print(numberVector)
print("Unique Numbers: ")
print(unique(numberVector))