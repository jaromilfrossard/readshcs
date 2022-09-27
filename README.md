
<!-- README.md is generated from README.Rmd. Please edit that file -->

# readshcs

<!-- badges: start -->
<!-- badges: end -->

The goal of readshcs is to …

## Installation

You can install the development version of readshcs from
[GitHub](https://github.com/jaromilfrossard/readshcs) with:

``` r
# install.packages("devtools")
devtools::install_github("jaromilfrossard/readshcs")
```

## Read SHCS data

You can read dataset from the SHCS using:

``` r
library(readshcs)
# set the directory of the SHCS
set_shcs_dir(file.path("path","to","directory"))

# read dataset with patients information (pat.csv)
data_pat <- read_shcs_pat()
```
