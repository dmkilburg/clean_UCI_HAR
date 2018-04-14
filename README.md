
# Human Activity Recognition Using Smartphones Dataset README : Cleaning/Tidying Data Example

### Original Data courtesy of:

** Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit<E0> degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws **

[www.smartlab.ws](https://www.smartlab.ws)

*******

#### This repo includes the following files :

 - README.md
 - CodeBook.md : Description of features
 - run_analysis.R : script used to clean original data
 - HumanActivityRecog-Tidy.ipynb : Jupyter notebook that contains the R script
 - results.csv : original dataset in "cleaned" form (long form)
 - averages.csv : an independent tidy dataset that contains averages of all statistical features grouped by (subject,activity, and signal)
 
***********

You can run the data cleaning scripts either with run_analysis.R or by running the Jupyter notebook assuming that:
 - data was downloaded from the link in the CodeBook.md (same directory structure and file names)
 - the r scripts are placed in the main directory with train and test being direct subdirectories. (If these are different you can change the commands in the Read Data section to reflect the correct file locations)
*********
 
A Jupyter Notebook has been included for your convenience; as the dataset is visualized during different steps in the cleaning process.

run_analysis.R contains the code that was used to tidy/clean the data. The output of this script are the files 'averages.csv' and the 'results.csv'. 

For a description of the features please see the included CodeBook


