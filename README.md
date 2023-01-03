Poolside
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

*A virtual vacation where the sun never sets.*

## Dive in

``` r
# install.packages("rstudioapi")
poolside <- "https://raw.githubusercontent.com/nsgrantham/poolside-rstudio/main/poolside.rstheme"
rstudioapi::addTheme(poolside, apply = TRUE, force = TRUE)
```

## Dry off

``` r
rstudioapi::removeTheme("Poolside {rsthemes}")
```
