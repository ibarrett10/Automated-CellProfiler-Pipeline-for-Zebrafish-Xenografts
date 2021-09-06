# Automated-CellProfiler-Pipeline-for-Zebrafish-Xenografts
The CellProfiler pipeline developed here can be used to automatically analyze hundreds of images taken from Zebrafish xenograft assays to determine how cell development or cancer growth has progressed.

Using the most recent version of CellProfiler (found here: https://cellprofiler.org), you can analyze hundreds of zebrafish xenograft assays automatically and determine how cancer growth and metastisis has progressed in zebrafish embryos. 

The file below should be downloaded and imported into CellProfiler using the File>Open feature. 

No changes are needed in order to run the pipeline. All you need to do is import your image files in the "Images" menu and designate a folder where the finished data should be exported in an excel .csv file format. 

Subsequently, once your data is exported, you can use the included R scripts to analyze your image data and export the same charts used in the experiment. Just open the R script into R Studio (https://www.rstudio.com/products/rstudio/download/), input the name of your file where the data is stored, designate the variables you're interested in tracking using the open slots in the code, and run it. 

Note that you will need to make sure that the ggplot2 and the tidyverse package (dplyr, readr, etc.) are installed to run the script. It is recomended that users have a working knowledge of R Studio before attempting to run the script as you will need to input variables from your spreadsheet and designate which properties of your images you'd like to investigate through the script. Please see the template R script for more information about what details you need to familiarize yourself with to successfully analyze the .csv data from CellProfiler. 

For any questions concerning the use and distribution of these files, please email [irb18@georgetown.edu](url).
