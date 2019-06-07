# Get datasets from the dslabs package and save to files
library(dslabs)
library(dplyr)
#Datasets
data("murders") # Gun murder data for US states in 2012
data("gapminder") # Health and income outcomes for 184 countries from 1960 to 2016
data("us_contagious_diseases") # Yearly counts of several diseases for US states
data("polls_us_election_2016") # Poll results from the US 2016 presidential elections
data("heights") # Self-reported heights in inches for males and females
data("divorce_margarine") # Spurious correlation data

# Save tables
tables_dir = "PATH_TO_FOLDER/2019_Data_Wrangling/Data"

murders %>% write.table(. , file = file.path(tables_dir, "murders.tsv"), 
                        sep = '\t', dec = ".", row.names = F, quote = F)

gapminder %>% write.table(. , file = file.path(tables_dir, "gapminder.tsv"), 
                          sep = '\t', dec = ".", row.names = F, quote = F)

us_contagious_diseases %>% write.table(. , file = file.path(tables_dir, "us_contagious_diseases.tsv"), 
                                       sep = '\t', dec = ".", row.names = F, quote = F)

polls_us_election_2016 %>% write.table(. , file = file.path(tables_dir, "polls_us_election_2016.tsv"), 
                                       sep = '\t', dec = ".", row.names = F, quote = F)

heights %>% write.table(. , file = file.path(tables_dir, "heights.tsv"), 
                        sep = '\t', dec = ".", row.names = F, quote = F)

divorce_margarine %>% write.table(. , file = file.path(tables_dir, "divorce_margarine.tsv"), 
                                  sep = '\t', dec = ".", row.names = F, quote = F)