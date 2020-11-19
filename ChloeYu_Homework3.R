#Q1
#a
library(coronavirus)
setwd("/Users/zhuoyiyu/Desktop")
dta = read.csv("/Users/zhuoyiyu/Desktop/coronavirus.csv")
#b
head(dta, n = 100L)
#c
#There are 7 columns in this data frame
#1st: date: the date of the summary
#2nd: province: the province or state when applicable
#3rd: country: the country or region name
#4th: lat: lattitude point
#5th: long: longitude point
#6th: type: the type of case (i.e. confirmed, death, recovered)
#7th: cases: the number of cases corresponding to the case type


#Q2
#a
library(dplyr)
summary_df = coronavirus %>%
  filter(type == "confirmed") %>%
  group_by(country) %>%
  summarise(total_cases = sum(cases)) %>%
  arrange(-total_cases)
summary_df

#b.
top_5_country = summary_df %>%
  arrange(desc(total_cases)) %>%
  top_n(5)

library(ggplot2)
top_5_country_plot = 
  ggplot(data = top_5_country, aes(x = country, y = total_cases) )+
  geom_bar(stat = "identity", fill = "tomato2", alpha=5)+
  theme_bw()+
  #d. adding title
  labs(title = "Top 5 countries by total cases", x= "Country", y = "Total Cases")+
  theme(axis.text = element_text(angle = 30))+
  #c. flipping graph
  coord_flip()+
  geom_label(aes(label = total_cases), label.size = .25)
  


#Q3
#a
recent_cases = coronavirus %>%
  group_by(date) %>%
  summarise(daily_case = sum(cases)) %>%
  arrange(date)

#b
rencet_cases_plot = 
  ggplot(data = recent_cases, aes(x = date, y = daily_case)) +
  theme_bw()+
  geom_line(color = "blue", alpha = 1)+
  scale_x_date(date_labels = "%b", date_breaks = "1 month")+
  labs(x = "Date", y = "Total Daily Cases", title = "Confirmed Number of Cases in Time Series")

  
  
  
  
  

  
