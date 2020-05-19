#   _██_
#  ‹(●̮•)›
#    (█)
#    / |
# 
# R Script based on Data Science Live exercises, by Rob Campanell (org.).
# Episode 3: selecting.
# All episodes avaliable from: http://datasciencelive.com/
# Data set: OECD, Social Spending by country.
# Available from: https://www.oecd-ilibrary.org/social-issues-migration-health/social-spending/indicator/english_7497563b-en?parentId=http%3A%2F%2Finstance.metastore.ingenta.com%2Fcontent%2Fthematicgrouping%2F3ddf51bf-en
# I saved the data in an csv file and used the read_csv() function to work
# with the data in RStudio.

# ===== Intalling Packages ===== #
# Packages to install, if you have not already done so.
# install.packages("dplyr")
# install.packages("readr")

# ===== Librarys used ========== #
library(dplyr)
library(readr)

# ===== Reading Data =========== #
oecd <- read_csv("~/workspace/R_projetos/DS_Live/social_spending_oecd.csv")
str(oecd)

# ===== Basic Select =========== #
select_oecd <- oecd %>%
  select (LOCATION, TIME, Value)

# ===== Ends With ============== #
ends_with <- oecd %>%
  select(LOCATION, ends_with('e'))

# ===== Starts With ============ #
starts_with <- oecd %>%
  select(LOCATION, starts_with('f'))

# ===== Contains =============== #
contains_AUT_oecd <- select_oecd %>%
  select(contains('L'))