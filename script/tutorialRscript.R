# Sarka Ondrouchova
# s1861053@ed.ac.uk
# Efficient coding in RStudio Tutorial
# December 2021

# Prepare the workspace and data ----
## Load libraries ----
# install.packages("readxl")
# install.packages("janitor")
# install.packages("pacman")

library(readxl)
library(janitor)
library(pacman)

## Set working directory ----
setwd("C:/Users/ondro/OneDrive/School/Data Science/tutorial-sharkie58")

## Load files ----
# 1. manually
impala_manual <- read_excel("data/tameimpala.xlsx")

# 2. shortcut
# The code for shortcut is copied from the console and commented out as we've done this through the toolbar
# > library(readxl)
impala_shortcut <- read_excel("data/tameimpala.xlsx")
# > View(impala_shortcut)

# Compare datasets by viewing them from the environment
# Since the datasets are the same, we can use a simpler name
impala <- impala_manual

# Efficient use of packages ----
## Clean column names ----
impala_clean <- clean_names(impala)

## Efficient loading of packages
p_load(readxl, janitor, pacman, skimr) # I added a new package in the mix,
# skimr - which wasn't installed before! p_load loaded all installed packages 
# and 




