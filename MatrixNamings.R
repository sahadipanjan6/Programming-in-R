# Named Vectors

Charlie <- 1:5
Charlie

# Giving names
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie

# clearing the names
names(Charlie) <- NULL
Charlie

# naming Matrix Dimension 1
temporary <- rep(c("aa", "bb", "cc"), times=3)
temporary
temporary <- rep(c("aa", "bb", "cc"), each=3)
temporary

my.matrix <- matrix(temporary, 3, 3)
my.matrix

# giving the row-names
rownames(my.matrix) <- c("How", "are", "you")
my.matrix

# giving the column-names
colnames(my.matrix) <- c("I", "am", "fine")
my.matrix

# putting a zero(0) in the middle of the matrix
my.matrix["are","am"] <- 0
my.matrix

# checking the row-names of the matrix
rownames(my.matrix)

# checking the column-names of the matrix
colnames(my.matrix)

# clearing the row-names of the matrix
rownames(my.matrix) <- NULL
my.matrix

# clearing the column-names of the matrix
colnames(my.matrix) <- NULL
my.matrix
