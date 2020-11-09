FROM ubuntu
# make a working directory in container
RUN mkdir /working_directory
# set working directory
WORKDIR /working_directory
