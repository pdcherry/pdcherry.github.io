library(rvest)


# State Measures ----------------------------------------------------------
state_url <- "https://calmatters.org/explainers/california-ballot-measures-2024/"

state_html <- rvest::read_html(state_url)
state_html %>% html_elements(xpath = "//a") %>% html_text2()
#  str_detect("Proposition")
                            