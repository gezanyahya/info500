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

  6) To execute the analysis, from the project folder you can run 
        ``` bash
     make report.html
      ```
     This will create a file called Yahya_Project in your directory
     
     
## Using Docker to execute the analysis
1) Download and save all files from this info550_project repository into the local directory of your choice
2) In `Terminal`, navigate to the local directory 
3) Pull the image from my DockerHub repository by running the following code

```bash
     docker pull gezanyahya/info550_project:project
 ```
  
4) To get the final report from the image, mount your local directory to the directory in the container by running the following code
 
 ``` bash
     docker run -v /insert/local/directory/path:/project gezanyahya/info550_project:project
 ```
 Replace /insert/local/directory/path with the local path to your clone of this repository. 
 This will create a file called `report.html` output in your local working directory.
 

