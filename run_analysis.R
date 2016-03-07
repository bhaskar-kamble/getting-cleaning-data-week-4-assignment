run_analysis <- function() {

source("assgn1.R")
assgn1()
#assgn1 will superassign All_data to the global environment

print("1 done")

source("assgn2.R")
assgn2()
# Xallmean and Xallstd will be created and saved as csv files
print("2 done")

source("assgn3.R")
assgn3()
# this will save 'yall_name' as csv file
print("3 done")

source("assgn4.R")
assgn4()
# this wll save "Xall_name" as a csv file
print("4 done")


source("assgn5.R")
assgn5()
# this will save 'Xysub_splitmean' as a txt file
print("5 done")

write.csv(All_data,file="All_data.csv")
All_data
#All_data was superassigned to the global environment by assgn1() invoked in this command
#All_data is the one data set collecting all the data given which we need

}
