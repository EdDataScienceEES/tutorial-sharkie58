# Sarka Ondrouchova
# s1861053@ed.ac.uk
# Efficient coding in RStudio Tutorial
# December 2021

# Set working directory ----
setwd("C:/Users/ondro/OneDrive/School/Data Science/tutorial-sharkie58")

# Load libraries ----
# install.packages("readxl")
library(readxl)

# Load files ----
# 1. manually
impala_manual <- read_excel("data/tameimpala.xlsx")

# 2. shortcut
# > library(readxl)
# > impala_shortcut <- read_excel("data/tameimpala.xlsx")
# > View(impala_shortcut)



