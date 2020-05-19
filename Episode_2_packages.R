#   _██_
#  ‹(●̮•)›
#    (█)
#    / |
# 
# R Script based on Data Science Live exercises, by Rob Campanell (org.).
# Episode 2: installing packages.
# All episodes avaliable from: http://datasciencelive.com/

# ===== Intalling Packages ============================= #
# Packages to install, if you have not already done so.
# install.packages("dplyr")
# install.packages("readr")
# install.packages("readxl")
# install.packages("tidyr")
# install.packages("lubridate")
# install.packages("stringr")

# ===== Intalling Tidyverse ============================ #
# You can choose to install the tidyverse package, which
# contains and installs most of the packages listed above.
# See Tidyverse documentation at: https://www.tidyverse.org/
# install.packages("tidyverse")

# ===== Librarys used ================================== #
library(dplyr)
library(readr)

# ===== Reading Data From URL ========================== #
seattle_art <- read_csv("https://data.seattle.gov/api/views/j7sn-tdzk/rows.csv?accessType=DOWNLOAD")

# ===== Filtering the Instalation: Classification ====== #
installation <- seattle_art %>% # reading this %>% as 'and then'.
                filter(classification == 'Installation') %>%
                distinct() # to eliminate the duplicates.

# ===== Filtering the Environments: Classification ===== #
environments <- seattle_art %>%
                filter(classification == 'Environments') %>%
                distinct()