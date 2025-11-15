# title: "San Francisco political support data shows true alignment"
# author: "Patrick Cherry"
# date: "2024-03-03"

# Packages ----------------------------------------------------------------
library(dplyr)
library(tidyr)
library(readr)
library(stringr)
library(fs)
library(rvest)

fs::dir_info()

# Scrape Prop data --------------------------------------------------------
link <- "https://sfendorsements.com/"
my_html <- read_html(link)

table1 <- html_elements(my_html, "table.table:nth-child(12)") %>%
  html_table()

table2 <- html_elements(my_html, "table.table:nth-child(14)") %>%
  html_table()

# Form into tidy table ----------------------------------------------------
prop_table <- full_join(table1[[1]], table2[[1]], by = "Organization")

write_csv(prop_table, paste0("./posts/","2024_03_03-props_table.csv"))

# Scrape Organization Data ------------------------------------------------
org_scrape <- html_elements(my_html, "table.table:nth-child(19)") %>%
  html_table()

html_elements(my_html, "table.table:nth-child(19)") %>%
  html_nodes()

# Form into tidy table ----------------------------------------------------
org_tbl <- org_scrape[1]

write_csv(prop_table, paste0("./posts/","2024_03_03-props_table.csv"))


# Scrape candidate endorsement data ---------------------------------------

table3 <- html_elements(my_html, "table.table:nth-child(8)") %>%
  html_table()

table4 <- html_elements(my_html, "table.table:nth-child(10)") %>%
  html_table()

cand_table <- full_join(table3[[1]], table4[[1]], by = "Organization")

write_csv(cand_table, paste0("./posts/2024_03_02-SF_political_support_data/","2024_03_03-cand_table.csv"))

