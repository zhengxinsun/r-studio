# new tet data
library (gapminder)

gap <- gapminder

str (gap)

head (gap)
tail (gap)

gap$gdpbillion <-gap$gdpPercap * gap$pop / 10^9
head (gap)

gap [gap$country == "Canada",] 

# get all data from 1972

gap1972 <- gap [gap$year== 1972,]
gap1972

unique (gap1972$year)
#compute the mean of GDP of 1972

mean (gap1972$gdpbillion)
#compute the mean of per capita gdp
mean (gap1972$gdpPercap)

# get all the data for Albanian

gapAlbanian <- subset (gap, country =="Albania")
gapAlbanian


#compute the maximum population of Albania



max (gapAlbanian$pop)

#which () function is used to locate a specific value, ie, the items that has
#the max populatioin in Albania



wrong <- gap [gap$county == c("China", "Canada"),]

wrong

# right uses %>% ?

# write function  from Ferrenheit to Calvin

Ftocalvin <- function (ftemp) (
  return ((ftemp-32)*5/9 + 273.15))
Ftocalvin (12)

# free

library (dplyr)

select (gapminder, continent)
select (gapminder, matches("cont"))

filter (gapminder, continent =="Africa")

mutate (gapminder, meanlife = mean (lifeExp))

transmute ()

smmerize ()

gapminder %>%
  filter (continent == "Africa") %>%
  group_by(country) %>%
  summarize (min_life = min (lifeExp),
             max_life = max (lifeExp))%>% View

 gapminder %>%
   filter (continent =="Africa") %>%
   select (lifeExp, country, year)%>% View

 gapminder %>%
   group_by(country) %>%
   mutate (meanlife = mean (lifeExp)) %>% select (meanlife)%>%
    View
 
 summarize_each ()
 summarize_all ()
 summarize_at ()
 summarize_if()
 
 library (tidyr)
 gather ()
 
 gather (gapminder, "obs_var", "obs_key", lifeExp, gdpPercap) %>%
   group_by(obs_var) %>% summarize (means =mean (obs_key))
 
 spread ()
 
 gaplong <- gather (gapminder, "obs_var", "obs_val", lifeExp, gdpPercap, pop)
   
 str (gaplong)

 gaplong %>% group_by(continent,obs_var) %>%
   summarize(means=mean(obs_val))
 
 spread (gaplong, year, obs_val) %>% View
 
 gap_united <- unite (gapminder, "continent_year", continent, year, sep = "+")
 
 gap_united %>% 
   separate (continent_year, c("continent", "year"), sep = "\\+")
 
library (ggplot2)
 
 ggplot (gapminder, aes(x = year, y = lifeExp, group = country)) + 
   geom_point (aes(color = continent))
 
 ggplot (gapminder, aes(x = year, y = lifeExp, group = country)) + 
   geom_line (aes(color = continent)) +
   scale_y_continuous(limits = c (20, 100))
 
head (gapminder)
 
ggplot (data = gapminder, aes (x =year, y = gdpPercap, group =country)) +
  geom_line (aes(color = continent))
 