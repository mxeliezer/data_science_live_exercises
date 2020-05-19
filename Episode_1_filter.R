#   _██_
#  ‹(●̮•)›
#    (█)
#    / |
#
# R Script based on Data Science Live exercises, by Rob Campanell (org.).
# Episode 1: Filter
# Avaliable from: http://datasciencelive.com/post/2020/05/01/episode1filter/

# ===== Librarys used ================================= #
library(dplyr)
library(readr)

# ===== Reading Data From URL ========================= #
seattle_art <- read_csv("https://data.seattle.gov/api/views/j7sn-tdzk/rows.csv?accessType=DOWNLOAD")

# ===== Filtering the Instalation: Classification ===== #
installation <- seattle_art %>% # reading this %>% as 'and then'.
                filter(classification == 'Installation') %>%
                distinct() # to eliminate the duplicates.

# ===== Filtering the Environments: Classification ===== #
environments <- seattle_art %>%
                filter(classification == 'Environments') %>%
                distinct()