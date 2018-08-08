<!-- README.md is generated from README.Rmd. Please edit that file -->
Scaling Up Nutrition (SUN) Movement Annual Progress Reports <img src="man/figures/SUN-logo.png" align="right" />
================================================================================================================

[![Travis-CI Build
Status](https://travis-ci.org/ernestguevarra/scalingupnutrition.svg?branch=master)](https://travis-ci.org/ernestguevarra/scalingupnutrition)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/ernestguevarra/scalingupnutrition?branch=master&svg=true)](https://ci.appveyor.com/project/ernestguevarra/scalingupnutrition)
[![codecov](https://codecov.io/gh/ernestguevarra/scalingupnutrition/branch/master/graph/badge.svg)](https://codecov.io/gh/ernestguevarra/scalingupnutrition)

[Scaling Up Nutrition (SUN)](http://scalingupnutrition.org) is a global
movement of 60 countries aiming to end malnutrition in all its forms.
The SUN Movement Annual Progress Report provides a detailed snapshot of
the progress and results towards scaling up nutrition in SUN Countries
and the broad evolution of the Movement. This package contains text
dataset of the Movement’s annual reports from 2011-2017 and various
functions for processing, manipulating and analysing this dataset.

Installation
------------

The package `scalingupnutrition` can be installed in R through GitHub
via `devtools`:

``` r
if(!require(devtools)) install.packages("devtools")
install_github("ernestguevarra/scalingupnutrition")
library(scalingupnutrition)
```

Usage
-----

This dataset can be used to perform content analysis of the SUN progress
reports over time since its inception. An example of this can be found
in this [GitHub
repository](https://github.com/ernestguevarra/progressSUN).
