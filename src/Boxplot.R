# Boxplot
library(ggplot2)
library(tidyverse)
# draw a boxplot
ggplot(ess11_analysis, 
       aes(x = work_type,
           y = stflife,
           fill = work_type)) +
  geom_boxplot() +
  labs(
    title = "Life Satisfaction by Employment Type",
    x = "Employment Type",
    y = "Life Satisfaction Score (0-10)",
    fill = "Work Type"
  )

# dir.create("data_clean", showWarnings = FALSE)
# write_rds(ess11_analysis, "data_clean/ess11_analysis.rds")
