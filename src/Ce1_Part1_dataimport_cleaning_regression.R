library(haven)
library(dplyr)
ess11_de <- read_sav('ESS11-subset.sav') #Please put the data file I uploaded in the whatsapp chat in your 'Sandbox' so that you can import the original data
ess11_clean <- ess11_de %>% 
  select(mainact, stflife) %>% 
  filter(!is.na(mainact), !is.na(stflife)) %>% #select the variables that we need and get rid of the empty values
  mutate(mainact=as_factor(mainact)) #convert the mainact into the proper categorical variables with readable value in R
table(ess11_clean$mainact)#check if the data has been cleand successfully
ess11_analysis <- ess11_clean %>%
  mutate(work_type=ifelse(mainact=='Paid work',
                          'Full-time',
                          'Not full time')) #divide the work_type into two categories: 'Full-time' and 'Not full time' and add an column to the data
ess11_analysis %>%
  group_by(work_type)%>%
  summarise(main_satisfaction=mean(stflife))
#by the code above, we can see that the mean of main_satisfaction of Full-time is less than that of Not full time
model <- lm(stflife ~ work_type, data = ess11_analysis, na.action=na.omit)
summary(model)#run the regression model, I will send the analysis of this in the whatsapp chat