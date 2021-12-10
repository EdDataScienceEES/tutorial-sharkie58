# Sarka Ondrouchova
# s1861053@ed.ac.uk
# Efficient coding in RStudio Tutorial
# December 2021

# Prepare the workspace and data ----
## Load libraries ----
# install.packages("tidyverse")
# install.packages("readxl")
# install.packages("janitor")
# install.packages("pacman")

library(tidyverse) # loads functions for efficient data manipulation
library(readxl) # reads xlsx files
library(janitor) # provides functions to clean your data
library(pacman) # loads and installs packages at the same time

## Set working directory ----
setwd("C:/Users/ondro/OneDrive/School/Data Science/tutorial-sharkie58")

## Load files ----
# 1. manually
impala_manual <- read_excel("data/tameimpala.xlsx")

# 2. shortcut
# The code for shortcut is copied from the console and commented out as we've done this through the toolbar
# > library(readxl)
# > impala_shortcut <- read_excel("data/tameimpala.xlsx")
# > View(impala_shortcut)

# Compare datasets by viewing them from the environment
# Since the datasets are the same, we can use a simpler name
impala <- impala_manual

# Efficient use of packages ----
## Clean column names ----
impala <- clean_names(impala)

## Efficient loading of packages ----
p_load(readxl, janitor, pacman, skimr)
# I added a new package in the mix, skimr - which wasn't installed before!
# p_load loaded all installed packages, and installed and loaded skimr

## skimr to summarize data ----
# First let's organize data in long format instead of wide
impala_long <- gather(
  impala,
  country,
  chart_position,
  c(aus, bel_fl, fra, ire, mex_air, nz_hot, por, uk, us_rock)
)
skim(impala_long)

