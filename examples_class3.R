

# Scatterplot 1 

ggplot(penguins) +
  aes(x = bill_length_mm, 
      y = flipper_length_mm) +
  geom_point(fill = "blue" , color = "blue", alpha = .5 , size = 2)
  
# Scatterplot 2
  ggplot(penguins) +
    aes(x = bill_length_mm , 
        y = flipper_length_mm, 
        fill = species, 
        color = species, 
        shape = species) +
      geom_point() +
      scale_color_viridis_d("Species")
      scale_fill_viridis_d("Species") +
      geom_smooth(color = "black" ,
                  fill = "black")
     
      
  
# Scatterplot 3
ggplot(penguins)+
  aes(x = species, 
      y = flipper_lenth_mm, 
      fill = species, 
      color = species) +
  geom_jitter(height = 0
              width = .4) +
  geom_boxplot(color = "black")









  