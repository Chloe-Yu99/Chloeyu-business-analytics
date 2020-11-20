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

#Extra Credit
#In line 37, I added default value, filled the bars with color, and transparency to 5
#In line 38, I set the graph theme to black and white
#In line 40, besides adding the title, I also changed the x and y axis' names
#In line 41, I tilted the axis texts 30 degrees
#In line 44, I added number label of each bar
  


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

#Extra Credit
#In line 65, I added black and white theme to the graph
#In line 66, I changed the color of line to blue, with a transparancy of 1
#In line 67, I edited the time display monthly with the short names for each month
#In line 68, I added title and names to each axis
  
  
  
  
  

  
