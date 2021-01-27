HW\_1\_Data\_Exploring
================
Antonietta
1/24/2021

# Exploring Markdown

On this project I will be exploring *palmerpenguins* dataset. We will
focus on exploring the body mass of penguins.

### Part 1 ; Statistics

We will begin by exploring the general summary of the dataset. In the
following *chunk* we will look at a *summary* of the data, the *first
rows* in the matrix, as well as the *total number of rows* in the
matrix.

    ##       species          island    bill_length_mm  bill_depth_mm  
    ##  Adelie   :152   Biscoe   :168   Min.   :32.10   Min.   :13.10  
    ##  Chinstrap: 68   Dream    :124   1st Qu.:39.23   1st Qu.:15.60  
    ##  Gentoo   :124   Torgersen: 52   Median :44.45   Median :17.30  
    ##                                  Mean   :43.92   Mean   :17.15  
    ##                                  3rd Qu.:48.50   3rd Qu.:18.70  
    ##                                  Max.   :59.60   Max.   :21.50  
    ##                                  NA's   :2       NA's   :2      
    ##  flipper_length_mm  body_mass_g       sex           year     
    ##  Min.   :172.0     Min.   :2700   female:165   Min.   :2007  
    ##  1st Qu.:190.0     1st Qu.:3550   male  :168   1st Qu.:2007  
    ##  Median :197.0     Median :4050   NA's  : 11   Median :2008  
    ##  Mean   :200.9     Mean   :4202                Mean   :2008  
    ##  3rd Qu.:213.0     3rd Qu.:4750                3rd Qu.:2009  
    ##  Max.   :231.0     Max.   :6300                Max.   :2009  
    ##  NA's   :2         NA's   :2

    ## # A tibble: 6 x 8
    ##   species island bill_length_mm bill_depth_mm flipper_length_… body_mass_g sex  
    ##   <fct>   <fct>           <dbl>         <dbl>            <int>       <int> <fct>
    ## 1 Adelie  Torge…           39.1          18.7              181        3750 male 
    ## 2 Adelie  Torge…           39.5          17.4              186        3800 fema…
    ## 3 Adelie  Torge…           40.3          18                195        3250 fema…
    ## 4 Adelie  Torge…           NA            NA                 NA          NA <NA> 
    ## 5 Adelie  Torge…           36.7          19.3              193        3450 fema…
    ## 6 Adelie  Torge…           39.3          20.6              190        3650 male 
    ## # … with 1 more variable: year <int>

    ## [1] 344

We can see that the penguin’s *body mass* *mean* was 4202 grams, with
the lowest body mass at 2700 grams and the highest at 6300 grams.

### Part 2; Graphs and Plots

On this section we will explore the body mass of the penguins, looking
at a *histogram* for normal distribution, a *boxplot* for homogenity of
variance, and a *plot* graph.

![](HW_1_DataExploration_files/figure-gfm/graphs%20-1.png)<!-- -->![](HW_1_DataExploration_files/figure-gfm/graphs%20-2.png)<!-- -->![](HW_1_DataExploration_files/figure-gfm/graphs%20-3.png)<!-- -->

From the histogram and boxplot we can see that the penguin’s body mass
was slightly right skewed, with most penguins falling somewhere under
between 3500 and 4500 grams.

\#END OF THE DATA EXPLORATION
