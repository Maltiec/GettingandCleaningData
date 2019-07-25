The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

During work resulting variable names were changed to adapt for use as Col names in R:

1 tBodyAccMeanX

2 tBodyAccMeanY

3 tBodyAccMeanZ

4 tBodyAccStdX

5 tBodyAccStdY

6 tBodyAccStdZ

41 tGravityAccMeanX

42 tGravityAccMeanY

43 tGravityAccMeanZ

44 tGravityAccStdX

45 tGravityAccStdY

46 tGravityAccStdZ

81 tBodyAccJerkMeanX

82 tBodyAccJerkMeanY

83 tBodyAccJerkMeanZ

84 tBodyAccJerkStdX

85 tBodyAccJerkStdY

86 tBodyAccJerkStdZ

121 tBodyGyroMeanX

122 tBodyGyroMeanY

123 tBodyGyroMeanZ

124 tBodyGyroStdX

125 tBodyGyroStdY

126 tBodyGyroStdZ

161 tBodyGyroJerkMeanX

162 tBodyGyroJerkMeanY

163 tBodyGyroJerkMeanZ

164 tBodyGyroJerkStdX

165 tBodyGyroJerkStdY

166 tBodyGyroJerkStdZ

201 tBodyAccMagMean

202 tBodyAccMagStd

214 tGravityAccMagMean

215 tGravityAccMagStd

227 tBodyAccJerkMagMean

228 tBodyAccJerkMagStd

240 tBodyGyroMagMean

241 tBodyGyroMagStd

253 tBodyGyroJerkMagMean

254 tBodyGyroJerkMagStd

266 fBodyAccMeanX

267 fBodyAccMeanY

268 fBodyAccMeanZ

269 fBodyAccStdX

270 fBodyAccStdY

271 fBodyAccStdZ

294 fBodyAccMeanFreqX

295 fBodyAccMeanFreqY

296 fBodyAccMeanFreqZ

345 fBodyAccJerkMeanX

346 fBodyAccJerkMeanY

347 fBodyAccJerkMeanZ

348 fBodyAccJerkStdX

349 fBodyAccJerkStdY

350 fBodyAccJerkStdZ

373 fBodyAccJerkMeanFreqX

374 fBodyAccJerkMeanFreqY

375 fBodyAccJerkMeanFreqZ

424 fBodyGyroMeanX

425 fBodyGyroMeanY

426 fBodyGyroMeanZ

427 fBodyGyroStdX

428 fBodyGyroStdY

429 fBodyGyroStdZ

452 fBodyGyroMeanFreqX

453 fBodyGyroMeanFreqY

454 fBodyGyroMeanFreqZ

503 fBodyAccMagMean

504 fBodyAccMagStd

513 fBodyAccMagMeanFreq

516 fBodyAccJerkMagMean

517 fBodyAccJerkMagStd

526 fBodyAccJerkMagMeanFreq

529 fBodyGyroMagMean

530 fBodyGyroMagStd

539 fBodyGyroMagMeanFreq

542 fBodyGyroJerkMagMean

543 fBodyGyroJerkMagStd

552 fBodyGyroJerkMagMeanFreq

556 angletBodyAccJerkMean,gravityMean

557 angletBodyGyroMean,gravityMean

558 angletBodyGyroJerkMean,gravityMean

559 angleX,gravityMean

560 angleY,gravityMean

561 angleZ,gravityMean


