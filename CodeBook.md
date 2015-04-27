CodeBook - UCI Human Activity Recognition: Tidy Dataset
=======================================================

## What is it?

This CodeBook presents all the metadata related to output of the `run_analysis.R` script present in this repository. 

Read the tidy data set in R as below:
```R
tidyData <- data.table("tidyData.txt")
```

The script `run_analysis.R` creates a tidy data set using raw data provided by  University of California Irvine's (UCI) dataset for Human Activity Recognition (HAR) using Samsung Galaxy S II smartphones that can be used for further research and analysis. Click this link to get further details of the experiment http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script presented here first merges training and test data provided and extracts only variables related to mean and standard deviation features for each of the 33 processed signals. Here are list of transformations done to the data to derive tidy data set:

1. Merge Test and Training Data Sets
2. Subset the data to extract mean and std features for each 33 processed signals (66 features in total)
3. Append "subject" and "activity" columns, thus having 68 columns
4. Summerize data (find means of all the features) grouping by "subject" and "activity"
5. Summarized (tidy) data contains 180 observations (for 30 subjects and 6 activities)

## Description of the variables in tidy data set

For each row in the Tidy Dataset, the following 68 columns are provided:
1. subject
2. activity
3. time-body-acceleration-mean-x
4. time-body-acceleration-mean-y
5. time-body-acceleration-mean-z
6. time-body-acceleration-std-x
7. time-body-acceleration-std-y
8. time-body-acceleration-std-z
9. time-gravity-acceleration-mean-x
10. time-gravity-acceleration-mean-y
11. time-gravity-acceleration-mean-z
12. time-gravity-acceleration-std-x
13. time-gravity-acceleration-std-y
14. time-gravity-acceleration-std-z
15. time-body-acceleration-jerk-mean-x
16. time-body-acceleration-jerk-mean-y
17. time-body-acceleration-jerk-mean-z
18. time-body-acceleration-jerk-std-x
19. time-body-acceleration-jerk-std-y
20. time-body-acceleration-jerk-std-z
21. time-body-gyro-mean-x
22. time-body-gyro-mean-y
23. time-body-gyro-mean-z
24. time-body-gyro-std-x
25. time-body-gyro-std-y
26. time-body-gyro-std-z
27. time-body-gyro-jerk-mean-x
28. time-body-gyro-jerk-mean-y
29. time-body-gyro-jerk-mean-z
30. time-body-gyro-jerk-std-x
31. time-body-gyro-jerk-std-y
32. time-body-gyro-jerk-std-z
33. time-body-acceleration-magnitude-mean
34. time-body-acceleration-magnitude-std
35. time-gravity-acceleration-magnitude-mean
36. time-gravity-acceleration-magnitude-std
37. time-body-acceleration-jerk-magnitude-mean
38. time-body-acceleration-jerk-magnitude-std
39. time-body-gyro-magnitude-mean
40. time-body-gyro-magnitude-std
41. time-body-gyro-jerk-magnitude-mean
42. time-body-gyro-jerk-magnitude-std
43. freq-body-acceleration-mean-x
44. freq-body-acceleration-mean-y
45. freq-body-acceleration-mean-z
46. freq-body-acceleration-std-x
47. freq-body-acceleration-std-y
48. freq-body-acceleration-std-z
49. freq-body-acceleration-jerk-mean-x
50. freq-body-acceleration-jerk-mean-y
51. freq-body-acceleration-jerk-mean-z
52. freq-body-acceleration-jerk-std-x
53. freq-body-acceleration-jerk-std-y
54. freq-body-acceleration-jerk-std-z
55. freq-body-gyro-mean-x
56. freq-body-gyro-mean-y
57. freq-body-gyro-mean-z
58. freq-body-gyro-std-x
59. freq-body-gyro-std-y
60. freq-body-gyro-std-z
61. freq-body-acceleration-magnitude-mean
62. freq-body-acceleration-magnitude-std
63. freq-body-acceleration-jerk-magnitude-mean
64. freq-body-acceleration-jerk-magnitude-std
65. freq-body-gyro-magnitude-mean
66. freq-body-gyro-magnitude-std
67. freq-body-gyro-jerk-magnitude-mean
68. freq-body-gyro-jerk-magnitude-std


### Subjects Values

Experiments are carried out on 30 subjects, each having unique ID staring 1 to 30. 

### Activity Values

The activity name with the following possible values.
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS
- LAYING
- SITTING
- STANDING

