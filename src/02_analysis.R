ess11_analysis <- ess11_clean %>%
  mutate(work_type = ifelse(mainact == 'Paid work',
                            'Full-time',
                            'Not full time'))

model <- lm(stflife ~ work_type, data = ess11_analysis, na.action = na.omit)
summary(model)