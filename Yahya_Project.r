---
title: "Yahya_Project"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

<!-- Load my data-->
```{r}
library(haven)
library(openxlsx)
library(gtools)
setwd("/Users/gezanyahya/Desktop/INFO550/R_Project")
data.src<- file.path ("/Users/gezanyahya/Desktop/INFO550/R_Project/DATA.sas7bdat")
read_sas("/Users/gezanyahya/Desktop/INFO550/R_Project/DATA.sas7bdat")
df <- read_sas("/Users/gezanyahya/Desktop/INFO550/R_Project/DATA.sas7bdat")
summary(df)
nrow(df)
ncol(df)
```

<!-- Data cleaning: I drop unwanted variables.
Create bar plot to show frequency of people with Black Pprovider-->
```{r}
ls(df)
library(tidyverse)
glimpse(df)
library(dplyr)
select(df, -c(YEAR, DUID, MEPSID, PANEL, PSUANN, STRATANN, PANELYR, RELYR, PERWEIGHT, SAQWEIGHT, DIABWEIGHT) )

library(ggplot2)
ggplot(df) + geom_bar(aes(x = USCPRBLK))
```

## Analysis

The bar plot shows the frequency of people with a usual medical provider that is Black or African American. 
<!-- Categorical variables: 0= Not in universe, 1= No, 2=Yes-->

