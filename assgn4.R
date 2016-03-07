assgn4 <- function() {


# part 4 of assignment
# this gives descriptive names to the 561 columns of the X-data 
source("assgn1nosave.R")
assgn1nosave()

datanames <- read.table("features.txt") # reads the file containing feature descriptions (mean, std etc.)
Xall_name <- Xall
names(Xall_name) <- datanames$V2

Xall_name <<- Xall_name
write.csv(Xall_name,file="Xall_name.csv")

}
