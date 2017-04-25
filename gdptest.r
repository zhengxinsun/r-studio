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

# right uses %L% ?

# write function  from Ferrenheit to Calvin

Ftocalvin <- function (ftemp) (
  return ((ftemp-32)*5/9 + 273.15))
Ftocalvin (12)


