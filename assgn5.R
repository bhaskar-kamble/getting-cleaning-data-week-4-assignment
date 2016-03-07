assgn5 <- function() {


# part 5 of assignment
# calculates the mean and the standard deviation for each of the 561 features split by activity and subject
source("assgn4.R")
source("assgn3.R")
assgn3()
assgn4()


#splitting by activity:
Xy <<- cbind(yall_name,Xall_name)
for (ii in 2:562) {

    Xy_splitmean <- lapply(split(Xy[,ii],Xy[,1]),mean)
    Xy_splitmean_df <- data.frame(Xy_splitmean)
    names(Xy_splitmean_df) <- names(Xy_splitmean)
    Xyname <- data.frame(feature=names(Xy)[ii])
    Xy_splitmean_ii <- cbind(Xyname,Xy_splitmean)
    if (ii==2) {
        Xy_splitmean_tot <- Xy_splitmean_ii
    }
    if (ii>2) {
        Xy_splitmean_tot <- rbind(Xy_splitmean_tot,Xy_splitmean_ii)
    }
}
Xy_splitmean_activity <<- Xy_splitmean_tot 
#this variable is the required variable
write.csv(Xy_splitmean_activity,file="Xy_splitmean_activity.csv")


#splitting by subject:
Xy <<- cbind(suball,Xall_name)
for (ii in 2:562) {

    Xy_splitmean <- lapply(split(Xy[,ii],Xy[,1]),mean)
    Xy_splitmean_df <- data.frame(Xy_splitmean)
    names(Xy_splitmean_df) <- names(Xy_splitmean)
    Xyname <- data.frame(feature=names(Xy)[ii])
    Xy_splitmean_ii <- cbind(Xyname,Xy_splitmean)
    if (ii==2) {
        Xy_splitmean_tot <- Xy_splitmean_ii
    }
    if (ii>2) {
        Xy_splitmean_tot <- rbind(Xy_splitmean_tot,Xy_splitmean_ii)
    }
}
Xy_splitmean_subject <<- Xy_splitmean_tot 
#this variable is the required variable
write.csv(Xy_splitmean_subject,file="Xy_splitmean_subject.csv")


}
