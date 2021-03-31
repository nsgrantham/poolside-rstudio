Poolside
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

*A virtual vacation where the sun never sets.*

![poolside.rstheme and poolside.fm](poolside.png)

## Dive in

``` r
# install.packages("rstudioapi")
library(rstudioapi)
poolside <- "https://raw.githubusercontent.com/nsgrantham/poolside-rstudio/main/poolside.rstheme"
addTheme(poolside, apply = TRUE, force = TRUE)
```

## Dry off

``` r
library(rstudioapi)
removeTheme("Poolside {rsthemes}")
```
