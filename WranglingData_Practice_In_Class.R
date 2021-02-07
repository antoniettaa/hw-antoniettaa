progdata::tutorial_wrangle()


# Piping data through multiple steps

## '%>%' stands for 'then', and it's read as 'piping'

gapminder %>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)

## If we wanted to see the life expectancy each year for Cambodia, this reads as
## filtering the column of countries to cambodia 
## then selecting the year and life expectancy 

mtcars %>%
  filter(.data = ., cyl == 6) %>%
  select(mpg, hp)

# Select function

?select

## The following would select the id, gender and extraversion and call it 
## gender_extra , the last line would print it 

gender_extra <-
  bfi_data %>%
  select(.id, gender , extraversion)

gender_extra


## any_of() and all_of() 
### use to find any scales that match the scales in the vector 
### all of would require all scales to exist 

bfi_data %>%
  select(all_of((p_scale)))

##  Mutate creates new variables or/and changes pre-existing ones


