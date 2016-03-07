assgn3 <- function() {


# part 3 of assignment
# replaces the numbers in the y-data set with their descriptive actions
source("assgn1nosave.R")
assgn1nosave()

activities <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
yall_name <- yall
yall_name <- replace(yall_name,(yall_name==1),activities[1])
yall_name <- replace(yall_name,(yall_name==2),activities[2])
yall_name <- replace(yall_name,(yall_name==3),activities[3])
yall_name <- replace(yall_name,(yall_name==4),activities[4])
yall_name <- replace(yall_name,(yall_name==5),activities[5])
yall_name <- replace(yall_name,(yall_name==6),activities[6])
names(yall_name) <- "activity"
yall_name <<- yall_name
# yall_name entries now contain activity names instead of just numbers

write.csv(yall_name,file="yall_name.csv")


}
