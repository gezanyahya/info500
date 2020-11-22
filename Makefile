# install R packages for analysis
install:
	Rscript -e "rmarkdown::render('R/install_packages.Rmd')"

# produce the final report
report.html: Data/DATA.csv R/Yahya_Project.Rmd
	Rscript -e "rmarkdown::render('R/Yahya_Project.Rmd' quiet = TRUE )"
  
# echo some helpful information about the Makefile
.PHONY: help
help:
	@echo "Yahya_Project.html" : Generate final analysis report."
	

##	make report: generate final html report
report: report.html

##	make build: build the docker image
build:
	docker build -t info550_project

