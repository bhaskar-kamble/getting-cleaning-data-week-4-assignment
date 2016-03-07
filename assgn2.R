assgn2 <- function() {


# part 2 of assignment
# extracts the columns of mean and standard deviation using 'grep'
source("assgn1nosave.R")
assgn1nosave()

datanames <- read.table("features.txt") # reads the file containing feature descriptions (mean, std etc.)

Xall_name <- Xall
names(Xall_name) <- datanames$V2 # assign the correct names to the 561 different features
Xallmean <<- Xall_name[grep("[Mm]ean",datanames$V2)] # search all columns of Xall_name whose names contain 'mean' or 'Mean'
Xallstd <<- Xall_name[grep("std",datanames$V2)]      # search all columns of Xall_name whose names contain 'std'

# Xallmean and Xallstd are the relevant variables

write.csv(Xallmean,file="Xallmean.csv")
write.csv(Xallstd,file="Xallstd.csv")


}
