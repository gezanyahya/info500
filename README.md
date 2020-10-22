## My Project

For my project, I will analyze the `USCPRBLK` data. 

To analyze the data you will need to install some `R` packages. The required packages can be installed using `R` commands.

``` r
install.packages(c("haven", "openxlsx", "gtools", "tidyverse", "dplyr", "ggplot2"))
```


## Execute the analysis
  1) Download and save `DATA.csv` in the project folder of your choice in your desired directory. 
  2) Download and save `Yahya_Project.Rmd` in the project folder of your choice in your desired directory.
  3) Open `Yahya_Project.Rmd` in `R`.
  4) Load the data in `R`
  5) Knit `Yahya_Project.Rmd` in `R` or `R Studio` or run the code below in your terminal from the project folder
 
 ``` bash
Rscript -e "rmarkdown::render('Yahya_Project.Rmd')"
```
This will create a file called `Yahya_Project.html` output in your directory that contains the results.

## Using Makefile
  1) Use the following make command to install R packages for analysis or run the code below in your terminal 
      install:
        Rscript -e "rmarkdown::render('install_packages.Rmd')"
   2) Use the following make command to produce the final report or run the code below in your terminal
      Yahya_Project.html: DATA.csv Yahya_Project.Rmd
        Rscript -e "rmarkdown::render('Yahya_Project.Rmd' quiet = TRUE )"
  3) Use the following make command to echo some helpful information about the Makefile or use the code below
      .PHONY: help
      help:
        @echo "Yahya_Project.html" : Generate final analysis report."
