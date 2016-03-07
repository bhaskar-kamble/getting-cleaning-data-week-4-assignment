assgn1 <- function() {


# part 1 of assignment
# uses the 'rbind' command to merge the test and the train sets
# the current working directory (./) is 'UCI HAR Dataset' and this function assgn1.R is in the same directory

# subjects data
subtest <- read.table("./test/subject_test.txt")
subtrain <- read.table("./train/subject_train.txt")
suball <- rbind(subtest,subtrain)     ##################################################### subjects

# activity data
ytest <- read.table("./test/y_test.txt")
ytrain <- read.table("./train/y_train.txt")
yall <- rbind(ytest,ytrain)           ################################################### activities

# feature data
Xtest <- read.table("./test/X_test.txt")
Xtrain <- read.table("./train/X_train.txt")
Xall <- rbind(Xtest,Xtrain)           ###### the 561-dimensional feature vector for each measurement

# 128-dimensional raw data (acceleration, angular velocity etc)
abxtest <- read.table("./test/Inertial\ Signals/body_acc_x_test.txt")
abytest <- read.table("./test/Inertial\ Signals/body_acc_y_test.txt")
abztest <- read.table("./test/Inertial\ Signals/body_acc_z_test.txt")
abxtrain <- read.table("./train/Inertial\ Signals/body_acc_x_train.txt")
abytrain <- read.table("./train/Inertial\ Signals/body_acc_y_train.txt")
abztrain <- read.table("./train/Inertial\ Signals/body_acc_z_train.txt")
abxall <- rbind(abxtest,abxtrain)     # the 128-dimensional raw data for each measurement: body-acc-x
abyall <- rbind(abytest,abytrain)     # the 128-dimensional raw data for each measurement: body-acc-y
abzall <- rbind(abztest,abztrain)     # the 128-dimensional raw data for each measurement: body-acc-z

gbxtest <- read.table("./test/Inertial\ Signals/body_gyro_x_test.txt")
gbytest <- read.table("./test/Inertial\ Signals/body_gyro_y_test.txt")
gbztest <- read.table("./test/Inertial\ Signals/body_gyro_z_test.txt")
gbxtrain <- read.table("./train/Inertial\ Signals/body_gyro_x_train.txt")
gbytrain <- read.table("./train/Inertial\ Signals/body_gyro_y_train.txt")
gbztrain <- read.table("./train/Inertial\ Signals/body_gyro_z_train.txt")
gbxall <- rbind(gbxtest,gbxtrain) # the 128-dimensional raw data for each measurement: ang-velocity-x
gbyall <- rbind(gbytest,gbytrain) # the 128-dimensional raw data for each measurement: ang-velocity-y
gbzall <- rbind(gbztest,gbztrain) # the 128-dimensional raw data for each measurement: ang-velocity-z

atxtest <- read.table("./test/Inertial\ Signals/total_acc_x_test.txt")
atytest <- read.table("./test/Inertial\ Signals/total_acc_y_test.txt")
atztest <- read.table("./test/Inertial\ Signals/total_acc_z_test.txt")
atxtrain <- read.table("./train/Inertial\ Signals/total_acc_x_train.txt")
atytrain <- read.table("./train/Inertial\ Signals/total_acc_y_train.txt")
atztrain <- read.table("./train/Inertial\ Signals/total_acc_z_train.txt")
atxall <- rbind(atxtest,atxtrain)  ##### the 128-dimensional raw data for each measurement: tot-acc-x
atyall <- rbind(atytest,atytrain)  ##### the 128-dimensional raw data for each measurement: tot-acc-y
atzall <- rbind(atztest,atztrain)  ##### the 128-dimensional raw data for each measurement: tot-acc-z


# the following varaibles now contain ALL (test+train) data:
#
# suball
# yall
# Xall
# abxall
# abyall
# abzall
# gbxall
# gbyall
# gbzall
# atxall
# atyall
# atzall


All_data <- cbind(suball,yall,Xall)
datanames <- read.table("features.txt")
names(All_data) <- c("subject","activity",datanames$V2)

All_data <<- All_data #superassign to global environment

}
