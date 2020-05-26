#   _██_
#  ‹(●̮•)›
#    (█)
#    / |
# R Script based on Data Science Live exercises, by Rob Campanell (org.).
# Episode 4: Cleaning.
# All episodes avaliable from: http://datasciencelive.com/
# Data set: OECD, Social Spending by country.
# Available from: https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.oecd-ilibrary.org%2Ftotal-fertility-rates_5k4dpmzrg4nr.xls%3FitemId%3D%252Fcontent%252Fcomponent%252Ffactbook-2013-table9-en%26mimeType%3Dvnd.ms-excel&v=8FhTfyb2z9Q&redir_token=qcjvwSwcp2XaPlSUQnOlpwqrqWt8MTU5MDU3NTAwOEAxNTkwNDg4NjA4&event=video_description

# ===== Intalling Packages =================== #
# Packages to install, if you have not already done so.
# install.packages("dplyr")
# install.packages("readxl")

# ===== Librarys used ======================== #
library(dplyr)
library(readxl)

# ===== Reading Excel File =================== #
# Having downloaded the file from the link, 
# we will use the function below to read it in RStudio.
oecd <- read_xls("~/workspace/R_projetos/DS_Live/fertility_rates.xls")

# ===== Skiping 3 first lines ================ #
oecd <- read_xls("~/workspace/R_projetos/DS_Live/fertility_rates.xls", skip=3)

# ===== Removing the last 2 rows ============= #
oecd <- read_xls("~/workspace/R_projetos/DS_Live/fertility_rates.xls", skip=3, n_max=42)

# ===== Renaming 2nd columm to 'Country' ===== #
oecd <- read_xls("~/workspace/R_projetos/DS_Live/fertility_rates.xls", skip=3, n_max=42) %>%
        rename(country = 2)



