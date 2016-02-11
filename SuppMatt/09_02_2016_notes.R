## Andrew MacDonald
## 9 Feb 2016
## teachin a class


# load the packages ------------------------------------


#install.packages("dplyr")
#install.packages("tidyr")
#install.packages("gapminder")
library(dplyr)
library(tidyr)
library(gapminder)


# practicing dplyr ------------------------------------


head(gapminder)

## select

select(gapminder, continent)
select(gapminder, -continent)
select(gapminder, lifeExp:gdpPercap)

## filter

filter(gapminder, year == 2002)

gapminder %>% 
  select(lifeExp) %>% 
  filter(lifeExp > 40)

african <- gapminder %>% 
  select(country:lifeExp) %>% 
  filter(continent == "Africa") %>% 
  select(-continent)


tail(african)


# group and summarize ---------------------------------

str(gapminder)

str(group_by(gapminder, continent))

group_by(gapminder, continent)

gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_gdp = mean(gdpPercap))

x <- gapminder %>% 
  group_by(country) %>% 
  summarise(mean_le = mean(lifeExp)) %>% 
  arrange(mean_le)

head(x)
tail(x)

x %>% 
  tail

x %>% 
  filter(mean_le == min(mean_le) | mean_le == max(mean_le))

gapminder %>% 
  mutate(gdp_total = gdpPercap * pop,
         gdp_billon = gdp_total / 10 ^ 9)

## challenge 3


