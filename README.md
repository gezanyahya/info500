## My Project

For my project, I will analyze the `USCPRBLK` data. 

To analyze the data you will need to install some `R` packages. The required packages can be installed using `R` commands.

``` r
install.packages(c("haven", "openxlsx", "gtools", "tidyverse", "dplyr", "ggplot2"))
```


## Execute the analysis

To execute the analysis, from the project folder you can run 

``` bash
Rscript -e "rmarkdown::render('Yahya_Project.Rmd')"
```

This will create a file called `Yahya_Project.html` output in your directory that contains the results.

