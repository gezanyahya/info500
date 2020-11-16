FROM rocker/tidyverse

#make a project directory in the container
RUN mkdir /project

#copy contents of local folder to project folder in container
COPY ./ /project/

#make R scripts executable
RUN chmod +x /project/R/*.R

#make container entry point bash
CMD /bin/bash 
