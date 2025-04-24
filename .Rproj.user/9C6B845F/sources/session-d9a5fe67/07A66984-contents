library(haven)
library(dplyr)

ess11_de <- read_sav('ESS11-subset.sav')

ess11_clean <- ess11_de %>%
  select(mainact, stflife) %>%
  mutate(stflife = ifelse(stflife == 88, NA, stflife)) %>%
  filter(!is.na(mainact), !is.na(stflife)) %>%
  mutate(mainact = as_factor(mainact))

table(ess11_clean$mainact)