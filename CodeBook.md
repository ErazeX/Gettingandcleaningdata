## Codebook to Getting and cleaning Data Assignment.

### The Data:
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors
This is the raw data that was used. The raw data was transformed and summarised to show the aggregate of the variables below per subject per activity. Refer to "Method" for the process.

### The Variables:
* Subject.number - Number of the subject (1-30)
* Activity.longname - Name of the activity (Walking,Walking Upstairs,Walking Downstairs,Sitting,Standing,Laying Down)
* tBodyAcc.std.X - Aggregate of readings from raw data.
* tBodyAcc.std.X- Aggregate of readings from raw data.
* tBodyAcc.std.Y- Aggregate of readings from raw data.
* tBodyAcc.std.Z- Aggregate of readings from raw data.
* tGravityAcc.std.X- Aggregate of readings from raw data.
* tGravityAcc.std.Y- Aggregate of readings from raw data.
* tGravityAcc.std.Z- Aggregate of readings from raw data.
* tBodyAccJerk.std.X- Aggregate of readings from raw data.
* tBodyAccJerk.std.Y- Aggregate of readings from raw data.
* tBodyAccJerk.std.Z- Aggregate of readings from raw data.
* tBodyGyro.std.X- Aggregate of readings from raw data.
* tBodyGyro.std.Y- Aggregate of readings from raw data.
* tBodyGyro.std.Z- Aggregate of readings from raw data.
* tBodyGyroJerk.std.X- Aggregate of readings from raw data.
* tBodyGyroJerk.std.Y- Aggregate of readings from raw data.
* tBodyGyroJerk.std.Z- Aggregate of readings from raw data.
* tBodyAccMag.std- Aggregate of readings from raw data.
* tGravityAccMag.std- Aggregate of readings from raw data.
* tBodyAccJerkMag.std- Aggregate of readings from raw data.
* tBodyGyroMag.std- Aggregate of readings from raw data.
* tBodyGyroJerkMag.std- Aggregate of readings from raw data.
* fBodyAcc.std.X- Aggregate of readings from raw data.
* fBodyAcc.std.Y- Aggregate of readings from raw data.
* fBodyAcc.std.Z- Aggregate of readings from raw data.
* fBodyAccJerk.std.X- Aggregate of readings from raw data.
* fBodyAccJerk.std.Y- Aggregate of readings from raw data.
* fBodyAccJerk.std.Z- Aggregate of readings from raw data.
* fBodyGyro.std.X- Aggregate of readings from raw data.
* fBodyGyro.std.Y- Aggregate of readings from raw data.
* fBodyGyro.std.Z- Aggregate of readings from raw data.
* fBodyAccMag.std- Aggregate of readings from raw data.
* fBodyBodyAccJerkMag.std- Aggregate of readings from raw data.
* fBodyBodyGyroMag.std- Aggregate of readings from raw data.
* fBodyBodyGyroJerkMag.std- Aggregate of readings from raw data.
* tBodyAcc.mean.X- Aggregate of readings from raw data.
* tBodyAcc.mean.Y- Aggregate of readings from raw data.
* tBodyAcc.mean.Z- Aggregate of readings from raw data.
* tGravityAcc.mean.X- Aggregate of readings from raw data.
* tGravityAcc.mean.Y- Aggregate of readings from raw data.
* tGravityAcc.mean.Z- Aggregate of readings from raw data.
* tBodyAccJerk.mean.X- Aggregate of readings from raw data.
* tBodyAccJerk.mean.Y- Aggregate of readings from raw data.
* tBodyAccJerk.mean.Z- Aggregate of readings from raw data.
* tBodyGyro.mean.X- Aggregate of readings from raw data.
* tBodyGyro.mean.Y- Aggregate of readings from raw data.
* tBodyGyro.mean.Z- Aggregate of readings from raw data.
* tBodyGyroJerk.mean.X- Aggregate of readings from raw data.
* tBodyGyroJerk.mean.Y- Aggregate of readings from raw data.
* tBodyGyroJerk.mean.Z- Aggregate of readings from raw data.
* tBodyAccMag.mean- Aggregate of readings from raw data.
* tGravityAccMag.mean- Aggregate of readings from raw data.
* tBodyAccJerkMag.mean- Aggregate of readings from raw data.
* tBodyGyroMag.mean- Aggregate of readings from raw data.
* tBodyGyroJerkMag.mean- Aggregate of readings from raw data.
* fBodyAcc.mean.X- Aggregate of readings from raw data.
* fBodyAcc.mean.Y- Aggregate of readings from raw data.
* fBodyAcc.mean.Z- Aggregate of readings from raw data.
* fBodyAccJerk.mean.X- Aggregate of readings from raw data.
* fBodyAccJerk.mean.Y- Aggregate of readings from raw data.
* fBodyAccJerk.mean.Z- Aggregate of readings from raw data.
* fBodyGyro.mean.X- Aggregate of readings from raw data.
* fBodyGyro.mean.Y- Aggregate of readings from raw data.
* fBodyGyro.mean.Z- Aggregate of readings from raw data.
* fBodyAccMag.mean- Aggregate of readings from raw data.
* fBodyBodyAccJerkMag.mean- Aggregate of readings from raw data.
* fBodyBodyGyroMag.mean- Aggregate of readings from raw data.
* fBodyBodyGyroJerkMag.mean- Aggregate of readings from raw data.
* Activity.number - Number of the activity (1-6). Correlates with Activity.longname.

### Method and tranformations applied:
1. The following files were loaded into R:
* subject_test.txt
* X_test.txt
* y_test.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* features.txt
2. The column names in the "features" file was made neater by doing the following:
* Removing all instances of "()".
* Replacing all "-" with ".".
* Replacing all "(" with ".".
* Removing all ")".
3. The column names "Subject.number" and "Activity.number" were added to the files "subject_test", "y_test", "subject_train" and "y_train".
4. The column names from the "features" file were added to "X_test" and "X_train".
5. All the files except "features" were merged.
6. A new data frame called "only_mean_and_std" was created including only columns with "mean" and "std" in the title.
7. A new column called Activity.longname was created based on the information from the "activity_labels.txt" file.
8. A new data frame called "tidy_table" was created to show the aggregate of the variables above per subject per activity.
9. "tidy_table" was exported to a .txt file called "Tidy Data Set.txt"
