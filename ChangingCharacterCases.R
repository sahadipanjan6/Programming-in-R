# Write a R program to extract first 10 english letter in lower case and 
# last 10 letters in upper case and extract letters between 22nd to 24th letters 
# in upper case.

charVector <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                "u", "v", "w", "x", "y", "z")

firstTenLetters <- charVector[1:10]
lastTenLetters <- charVector[17:26]
betweenLetters <- charVector[22:24]

# changing the cases and then displaying
firstTenLetters <- tolower(firstTenLetters)
lastTenLetters <- toupper(lastTenLetters)
betweenLetters <- toupper(betweenLetters)

print("First 10 letters: ")
print(firstTenLetters)
print("Last 10 letters: ")
print(lastTenLetters)
print("22nd to 24th letters: ")
print(betweenLetters)
