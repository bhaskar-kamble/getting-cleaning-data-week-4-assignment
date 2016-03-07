assgn5 <- function() {


# part 5 of assignment
# calculates the mean and the standard deviation for each of the 561 features split by activity and subject
source("assgn4.R")
source("assgn3.R")
assgn3()
assgn4()


#splitting by activity:
Xy <- cbind(yall_name,Xall_name)
Xy <- Xy[,!duplicated(colnames(Xy))]#getting rid of duplicated column names
library(dplyr)
Xy_splitmean_activity <<- data.frame(Xy %>% group_by(activity) %>% summarise_each(funs(mean)))


#splitting by subject:
suball_name <- suball
names(suball_name) <- "subject"
Xsub <- cbind(suball_name,Xall_name)
Xsub <- Xsub[,!duplicated(colnames(Xsub))]#getting rid of duplicated column names
Xsub_splitmean_subject <<- data.frame(Xsub %>% group_by(subject) %>% summarise_each(funs(mean)))

names(Xy_splitmean_activity)[1] <- "label"
names(Xsub_splitmean_subject)[1] <- "label"
Xysub_splitmean <<- rbind(Xy_splitmean_activity,Xsub_splitmean_subject)

write.table(Xysub_splitmean,file="Xysub_splitmean.txt",row.name=FALSE)

Xysub_splitmean

}
