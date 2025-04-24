library(ggplot2)

ggplot(ess11_analysis, 
       aes(x = work_type, y = stflife, fill = work_type)) +
  geom_boxplot() +
  labs(
    title = "Life Satisfaction by Employment Type",
    x = "Employment Type",
    y = "Life Satisfaction Score (0–10)",
    fill = "Work Type"
  )