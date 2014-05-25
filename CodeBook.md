## Get the measured data
Read the data from the files:
* X_train.txt
* X_test.txt
* subject_train.txt
* subject_test.txt
* y_train.txt
* y_test.txt
* activity_labels.txt
* features.txt
## Get the ID of the subjects
The 30 subjects are identified with integer between 1 and 30.
## Get the ID for the activities
The activities are identified by integer by 1 and 6.
## Merge Training and test data sets
We get a data frame 10299x561
## Get the activities labels
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING
## Get 561 feature names
## Extract measurements that contain mean and standard deviations
These measurements are 79
## Order by subject and activity ID 
## Calculate columns mean conditioned to subject and actvity
## Replace activity IDs with labels
## Generate tidy datasets
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y            
* tBodyAcc-mean()-Z     
* tBodyAcc-std()-X               
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z               
* tGravityAcc-mean()-X     
* tGravityAcc-mean()-Y           
* tGravityAcc-mean()-Z         
* tGravityAcc-std()-X            
* tGravityAcc-std()-Y            
* tGravityAcc-std()-Z            
* tBodyAccJerk-mean()-X         
* tBodyAccJerk-mean()-Y          
* tBodyAccJerk-mean()-Z       
* tBodyAccJerk-std()-X           
* tBodyAccJerk-std()-Y           
* tBodyAccJerk-std()-Z           
* tBodyGyro-mean()-X            
* tBodyGyro-mean()-Y             
* tBodyGyro-mean()-Z             
* tBodyGyro-std()-X              
* tBodyGyro-std()-Y              
* tBodyGyro-std()-Z              
* tBodyGyroJerk-mean()-X        
* tBodyGyroJerk-mean()-Y         
* tBodyGyroJerk-mean()-Z         
* tBodyGyroJerk-std()-X          
* tBodyGyroJerk-std()-Y          
* tBodyGyroJerk-std()-Z         
* tBodyAccMag-mean()            
* tBodyAccMag-std()              
* tGravityAccMag-mean()         
* tGravityAccMag-std()           
* tBodyAccJerkMag-mean()         
* tBodyAccJerkMag-std()          
* tBodyGyroMag-mean()            
* tBodyGyroMag-std()             
* tBodyGyroJerkMag-mean()        
* tBodyGyroJerkMag-std()         
* fBodyAcc-mean()-X               
* fBodyAcc-mean()-Y              
* fBodyAcc-mean()-Z            
* fBodyAcc-std()-X               
* fBodyAcc-std()-Y              
* fBodyAcc-std()-Z               
* fBodyAcc-meanFreq()-X          
* fBodyAcc-meanFreq()-Y          
* fBodyAcc-meanFreq()-Z          
* fBodyAccJerk-mean()-X          
* fBodyAccJerk-mean()-Y           
* fBodyAccJerk-mean()-Z        
* fBodyAccJerk-std()-X          
* fBodyAccJerk-std()-Y           
* fBodyAccJerk-std()-Z           
* fBodyAccJerk-meanFreq()-X      
* fBodyAccJerk-meanFreq()-Y       
* fBodyAccJerk-meanFreq()-Z   
* fBodyGyro-mean()-X              
* fBodyGyro-mean()-Y             
* fBodyGyro-mean()-Z             
* fBodyGyro-std()-X              
* fBodyGyro-std()-Y               
* fBodyGyro-std()-Z              
* fBodyGyro-meanFreq()-X          
* fBodyGyro-meanFreq()-Y      
* fBodyGyro-meanFreq()-Z         
* fBodyAccMag-mean()          
* fBodyAccMag-std()               
* fBodyAccMag-meanFreq()        
* fBodyBodyAccJerkMag-mean()     
* fBodyBodyAccJerkMag-std()      
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()     
* fBodyBodyGyroMag-std()          
* fBodyBodyGyroMag-meanFreq()    
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()





