# install R packages for analysis
install:
	Rscript -e "rmarkdown::render('R/install_packages.Rmd')"

# produce the final report
Yahya_Project.html: Data/DATA.csv R/Yahya_Project.Rmd
	Rscript -e "rmarkdown::render('R/Yahya_Project.Rmd' quiet = TRUE )"
  
# echo some helpful information about the Makefile
.PHONY: help
help:
	@echo "Yahya_Project.html" : Generate final analysis report."
	

#build docker image using the folowing:
.PHONY: report
report: Data/DATA.csv R/Yahya_Project.Rmd
	cd R; Rscript -e "rmarkdown::render('R/Yahya_Project.Rmd' quiet = TRUE )"

