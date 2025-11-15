# title: "San Francisco political support clustering"
# author: "Patrick Cherry"
# date: "2024-10-08"

# Packages ----------------------------------------------------------------
library(dplyr)
library(tidyr)
library(readr)
library(stringr)
library(fs)
library(rvest)

# Parameters --------------------------------------------------------------
filepref <- "2024_10_08-SF_pol_supp"
filedir <- "posts/2024_10_08-SF_political_support_data"

write_pol_table <- function(tbl_object){
  readr::write_csv(tbl_object, fs::path(filedir,
                   paste0(filepref, "_", substitute(tbl_object), ".csv"))
  )
}

link <- "https://sfendorsements.com/"
my_html <- read_html(link)

# National and major statewide races --------------------------------------
national_races <- html_element(my_html, "table.table:nth-child(8)") %>% html_table()
state_races <- html_element(my_html, "table.table:nth-child(10)") %>% html_table()

write_pol_table(national_races); write_pol_table(state_races)

# Citywide local races ----------------------------------------------------
local_SF_1 <- html_element(my_html, "table.table:nth-child(12)") %>% html_table()
local_SF_2 <- html_element(my_html, "table.table:nth-child(14)") %>% html_table()

local_SF_races <- full_join(local_SF_1, local_SF_2, by = "Organization")
write_pol_table(local_SF_races)

# District supervisors, education, BART -----------------------------------

# local_SF_1 <- html_element(my_html, "table.table:nth-child(12)") %>% html_table()
# local_SF_2 <- html_element(my_html, "table.table:nth-child(14)") %>% html_table()
# 
# local_SF_full <- full_join(local_SF_1, local_SF_2, by = "Organization")

# State ballot measures & propositions ------------------------------------
state1 <- html_element(my_html, "table.table:nth-child(22)") %>% html_table()
state2 <- html_element(my_html, "table.table:nth-child(24)") %>% html_table()

state_full <- full_join(state1, state2, by = "Organization")
write_pol_table(state_full)

# Local ballot measures & propositions ------------------------------------
local1 <- html_element(my_html, "table.table:nth-child(26)") %>% html_table()
local2 <- html_element(my_html, "table.table:nth-child(28)") %>% html_table()

local_full <- full_join(local1, local2, by = "Organization")
write_pol_table(local_full)

# About the endorsing organization ----------------------------------------
endorsers <- html_element(my_html, "table.table:nth-child(33)") %>% html_table()
write_pol_table(endorsers)

# Scrape candidate endorsement data ---------------------------------------
# 
# table3 <- html_elements(my_html, "table.table:nth-child(8)") %>%
#   html_table()
# 
# table4 <- html_elements(my_html, "table.table:nth-child(10)") %>%
#   html_table()
# 
# cand_table <- full_join(table3[[1]], table4[[1]], by = "Organization")
# 
# write_csv(cand_table, paste0("./posts/2024_03_02-SF_political_support_data/","2024_03_03-cand_table.csv"))

