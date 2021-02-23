
library(tidyverse)
library(palmerpenguins)

ggplot(penguins) +
  aes(x = species , y = flipper_length_mm , 
      color = sex )+
  geom_jitter(height = 0 , width = .2) +
  scale_x_discrete("Species") +  # changes the name of the label
  theme_classic()

# If we wanna prepare the data before we plot it 
penguins %>%
  mutate(sex = recode(sex , female = "Female", male = "Male")) %>% #another way of chaning the name of the variable, specifically from lower case to upper case 
  ggplot() +
  aes(x = species , y = flipper_length_mm , 
      color = sex )+
  geom_jitter(height = 0 , width = .2) + # geom is for how our plot actually looks like 
  xlab("Species") # for label
scale_x_discrete("Species") +  # changes the name of the label
  scale_y_continuous("Flipper length (mm)") +
  scale_color_brewer(palette = "Dark2") + # specifying different colors by using palettes 