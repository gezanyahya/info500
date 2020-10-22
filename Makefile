# install R packages for analysis
install:
	Rscript -e "rmarkdown::render('install_packages.Rmd')"

# produce the final report
Yahya_Project.html: DATA.csv Yahya_Project.Rmd
	Rscript -e "rmarkdown::render('Yahya_Project.Rmd' quiet = TRUE )"
  
# echo some helpful information about the Makefile
.PHONY: help
help:
	@echo "Yahya_Project.html" : Generate final analysis report."
	
