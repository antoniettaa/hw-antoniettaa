progdata::tutorial_wrangle()
mtcars
1
gapminder %>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)

mtcars %>% 
  lm(mpg ~ hp, data = .)

