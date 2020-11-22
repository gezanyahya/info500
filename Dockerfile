FROM rocker/tidyverse

#install R packages needed for analysis
RUN Rscript -e "install.packages('tidyverse')"

#make a project directory in the container
RUN mkdir /project

#copy contents of local folder to project folder in container
COPY ./ /project/

#make container entry point bash
CMD make -C project report.html
