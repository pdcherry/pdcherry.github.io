library(rvest)
library(fs)
library(here)
library(dplyr)
library(readr)
library(stringr)

# State Measures ----------------------------------------------------------
state_url <- "https://calmatters.org/explainers/california-ballot-measures-2024/"

state_html <- rvest::read_html(state_url)
state_html %>% html_elements(xpath = "//a") %>% html_text2()
#  str_detect("Proposition")


# City Measures -----------------------------------------------------------
og_data_path <- path("/Users/patrick/pdcherry_github_data/2024_08_29-Cali_Nov_2024_ballot_measures/")
sf_ballot_desc <- read.delim(path(og_data_path, "sf_ballot_meas_2024_desc.txt"),
                header = FALSE, sep = ":", allowEscapes = TRUE) %>%
  rename("Title" = 1, "Desc" = 2) %>%
  mutate(across(everything(), ~str_remove_all(.x, '\\"|”|“'))) %>%
  mutate(Desc = if_else(str_length(V3) > 1,
                        str_c(Desc, " : ", V3),
                        Desc)) %>%
  as_tibble() %>%
  select(!V3)

write_csv(sf_ballot_desc, path(og_data_path, "sf_ballot_meas_2024_desc.csv"))
