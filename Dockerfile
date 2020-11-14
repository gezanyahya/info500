FROM rocker/tidyverse

#install R packages
RUN Rscript -e install.packages('wesanderson')"

#make a project directory in the container
RUN mkdir /project

#copy copy contents of local folder to project folder in container
COPY ./ /project/

#make R scripts executable
RUN chmod +x /project/R/*.R

#set an environment variable
ENV which_fig="Black_Medical_Providers"

#make container entry point bash
CMD /bin/bash
