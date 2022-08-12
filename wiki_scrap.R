library(rvest)
library(readr)
library(dplyr)

wiki_data <- read_html("https://en.wikipedia.org/wiki/List_of_data_breaches") %>% html_table()

write_csv(as_tibble(wiki_data[[1]]), "data/wiki.csv")




