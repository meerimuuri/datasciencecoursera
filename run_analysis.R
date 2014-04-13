

if("getdata_projectfiles_UCI HAR Dataset" %in% dir())  # Check directory contains needed data folder
{

# Read and combine test and training set files
body_acc_x = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//body_acc_x_test.txt")
body_acc_x  = c(body_acc_x , scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//body_acc_x_train.txt"))

body_acc_y = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//body_acc_y_test.txt")
body_acc_y = c(body_acc_y, scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//body_acc_y_train.txt"))

body_acc_z = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//body_acc_z_test.txt")
body_acc_z = c(body_acc_z, scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//body_acc_z_train.txt"))

body_gyro_x = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//body_gyro_x_test.txt")
body_gyro_x  = c(body_gyro_x , scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//body_gyro_x_train.txt"))

body_gyro_y = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//body_gyro_y_test.txt")
body_gyro_y = c(body_gyro_y, scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//body_gyro_y_train.txt"))

body_gyro_z = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//body_gyro_z_test.txt")
body_gyro_z = c(body_gyro_z, scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//body_gyro_z_train.txt"))

total_acc_x = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//total_acc_x_test.txt")
total_acc_x  = c(total_acc_x , scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//total_acc_x_train.txt"))

total_acc_y = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//total_acc_y_test.txt")
total_acc_y = c(total_acc_y, scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//total_acc_y_train.txt"))

total_acc_z = scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//Inertial Signals//total_acc_z_test.txt")
total_acc_z = c(total_acc_z, scan("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//Inertial Signals//total_acc_z_train.txt"))


# Combine all the variables into 1 data frame
total_Data = cbind(body_acc_x, body_acc_y, body_acc_z, body_gyro_x, body_gyro_y, body_gyro_z, total_acc_x, total_acc_y, total_acc_z)

# Calculate means and standard deviations
mean_Data = apply(total_Data, 2, mean)
sd_Data = apply(total_Data, 2, sd)

# form tidy data set of means
tidy_data_means = t(rbind(mean_Data[1:3], mean_Data[4:6], mean_Data[7:9]))
colnames(tidy_data_means) = c("Body Acceleration", "Body Gyration", "Total Acceleration")
rownames(tidy_data_means) = c("x", "y", "z")

print(tidy_data_means)
}

