#Code Book for average_dataset.txt

For the original dataset codebook please refer to the README.txt file that can be found within the zip file of the original dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The average_dataset.txt has a total of 88 columns:

The first two columns are the identifiers namely:
  1. `participantid` - Which is the anonymous index of one of the 30 participants of the experiment
  2. `activity` - which can be one of 6 options - LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS and WALKING_UPSTAIRS - more details on each activity can be found in the original `README.txt` file

The next 86 columns are the average of the raw and processed measurements for each combination of 1. and 2.  
All values have been normalized and bounded within -1 and 1 and calculated from the original dataset 

The features headers are:
  * timebodyaccelerationmeanx
  * timebodyaccelerationmeany
  * timebodyaccelerationmeanz
  * timebodyaccelerationstdx
  * timebodyaccelerationstdy
  * timebodyaccelerationstdz
  * timegravityaccelerationmeanx
  * timegravityaccelerationmeany
  * timegravityaccelerationmeanz
  * timegravityaccelerationstdx
  * timegravityaccelerationstdy
  * timegravityaccelerationstdz
  * timebodyaccelerationjerkmeanx
  * timebodyaccelerationjerkmeany
  * timebodyaccelerationjerkmeanz
  * timebodyaccelerationjerkstdx
  * timebodyaccelerationjerkstdy
  * timebodyaccelerationjerkstdz
  * timebodygyromeanx
  * timebodygyromeany
  * timebodygyromeanz
  * timebodygyrostdx
  * timebodygyrostdy
  * timebodygyrostdz
  * timebodygyrojerkmeanx
  * timebodygyrojerkmeany
  * timebodygyrojerkmeanz
  * timebodygyrojerkstdx
  * timebodygyrojerkstdy
  * timebodygyrojerkstdz
  * timebodyaccelerationmagnitudemean
  * timebodyaccelerationmagnitudestd
  * timegravityaccelerationmagnitudemean
  * timegravityaccelerationmagnitudestd
  * timebodyaccelerationjerkmagnitudemean
  * timebodyaccelerationjerkmagnitudestd
  * timebodygyromagnitudemean
  * timebodygyromagnitudestd
  * timebodygyrojerkmagnitudemean
  * timebodygyrojerkmagnitudestd
  * frequencybodyaccelerationmeanx
  * frequencybodyaccelerationmeany
  * frequencybodyaccelerationmeanz
  * frequencybodyaccelerationstdx
  * frequencybodyaccelerationstdy
  * frequencybodyaccelerationstdz
  * frequencybodyaccelerationmeanfreqx
  * frequencybodyaccelerationmeanfreqy
  * frequencybodyaccelerationmeanfreqz
  * frequencybodyaccelerationjerkmeanx
  * frequencybodyaccelerationjerkmeany
  * frequencybodyaccelerationjerkmeanz
  * frequencybodyaccelerationjerkstdx
  * frequencybodyaccelerationjerkstdy
  * frequencybodyaccelerationjerkstdz
  * frequencybodyaccelerationjerkmeanfreqx
  * frequencybodyaccelerationjerkmeanfreqy
  * frequencybodyaccelerationjerkmeanfreqz
  * frequencybodygyromeanx
  * frequencybodygyromeany
  * frequencybodygyromeanz
  * frequencybodygyrostdx
  * frequencybodygyrostdy
  * frequencybodygyrostdz
  * frequencybodygyromeanfreqx
  * frequencybodygyromeanfreqy
  * frequencybodygyromeanfreqz
  * frequencybodyaccelerationmagnitudemean
  * frequencybodyaccelerationmagnitudestd
  * frequencybodyaccelerationmagnitudemeanfreq
  * frequencybodybodyaccelerationjerkmagnitudemean
  * frequencybodybodyaccelerationjerkmagnitudestd
  * frequencybodybodyaccelerationjerkmagnitudemeanfreq
  * frequencybodybodygyromagnitudemean
  * frequencybodybodygyromagnitudestd
  * frequencybodybodygyromagnitudemeanfreq
  * frequencybodybodygyrojerkmagnitudemean
  * frequencybodybodygyrojerkmagnitudestd
  * frequencybodybodygyrojerkmagnitudemeanfreq
  * angletbodyaccelerationmeangravity
  * angletbodyaccelerationjerkmeangravitymean
  * angletbodygyromeangravitymean
  * angletbodygyrojerkmeangravitymean
  * anglexgravitymean
  * angleygravitymean
  * anglezgravitymean


