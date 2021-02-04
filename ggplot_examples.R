

library(ggplot2)
library(gapminder)

library(tidyverse)


ggplot(gapminder) +
    aes(x = gdpPercap, y = lifeExp, fill = continent , color = continent) +
    geom_point(alpha = 0.1)

install.packages("gapminder")
install.packages("ggplot2")

library(progdata)
tutorial_ggplot

remotes::install_github("bwiernik/progdata@main")


# Class 2 

#histogram

library(ggplot2)
library(tidyverse)
library(palmerpenguins)

ggplot(penguins)
  aes(x = bill_length_mm) + 
  geom_histogram(binwidth = 5)  