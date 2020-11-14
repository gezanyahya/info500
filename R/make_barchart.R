#! /usr/bin/Rscript

# get environment variable to determine which figure to make
which_fig <- Sys.getenv("which_fig")

data(DATA.csv)

if(which_fig == "Black_Medical_Providers"){
	library(ggplot2)
ggplot(df) + geom_bar(aes(x = USCPRBLK))
}
