# install R packages for analysis
install: R/install_packages.Rmd
	Rscript -e "rmarkdown::render('R/install_packages.Rmd')"

# produce the final report
report.html: Data/DATA.csv R/Yahya_Project.Rmd
	Rscript -e "rmarkdown::render('R/Yahya_Project.Rmd' quiet = TRUE )"
  
# echo some helpful information about the Makefile
.PHONY: help
help:
	@echo "Yahya_Project.html" : Generate final analysis report."
	

##	make build: build the docker image
build: Dockerfile
	docker build -t gezanyahya/info550_project

