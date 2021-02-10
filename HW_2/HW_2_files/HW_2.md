HW\_2
================
Antonietta
2/6/2021

# Exercise 1 : Basic dplyr

## Task 1:

### filter () subset gapminder data to 3 countries; France, Japan, and Italy and pipe %\>% to select country and gdpPercap

### We will be piping using ‘%\>%’ to tell R in what order to perform the functions

### We will use filter() to have R return the rows that match our select condition of country

### We will then us %in% so it checks all of our input values against each other

### Our input values will come from a vector that we will create with the function c()

### We will select the decade of the 70s by adding year\>1969 & year \<1980 into the filter section

### Finally we will use the function select () to take the subset of country , year and GDP from the gapminder

    ## # A tibble: 6 x 3
    ##   country  year gdpPercap
    ##   <fct>   <int>     <dbl>
    ## 1 France   1972    16107.
    ## 2 France   1977    18293.
    ## 3 Italy    1972    12269.
    ## 4 Italy    1977    14256.
    ## 5 Japan    1972    14779.
    ## 6 Japan    1977    16610.

# Task 2:

## Make new variable for the change life expectancy to show they have dropped

### We will pipe from gapminder

### We will mutate the lifeExp variable, which creates a new variable named droplifeExp

### In the mutation we will add the function lag() to our original object to shift the time back

    ## # A tibble: 1,704 x 7
    ##    country     continent  year lifeExp      pop gdpPercap droplifeExp
    ##    <fct>       <fct>     <int>   <dbl>    <int>     <dbl>       <dbl>
    ##  1 Afghanistan Asia       1952    28.8  8425333      779.        NA  
    ##  2 Afghanistan Asia       1957    30.3  9240934      821.        28.8
    ##  3 Afghanistan Asia       1962    32.0 10267083      853.        30.3
    ##  4 Afghanistan Asia       1967    34.0 11537966      836.        32.0
    ##  5 Afghanistan Asia       1972    36.1 13079460      740.        34.0
    ##  6 Afghanistan Asia       1977    38.4 14880372      786.        36.1
    ##  7 Afghanistan Asia       1982    39.9 12881816      978.        38.4
    ##  8 Afghanistan Asia       1987    40.8 13867957      852.        39.9
    ##  9 Afghanistan Asia       1992    41.7 16317921      649.        40.8
    ## 10 Afghanistan Asia       1997    41.8 22227415      635.        41.7
    ## # … with 1,694 more rows

# Task 3:

## filter gapminder to show max GDP per cap by each country

### We will pipe from gapminder

### Once again we will use the function select() to take the substes of country and GDP

### We will mutate the gdpPercap object in order to have a new object that represents the highest GDP per cap

### We will group by country, so it shows max GDP for each country

### We will filter gdpPercap\_max and use the max() function to show only the max GDP per cap

    ## # A tibble: 142 x 3
    ## # Groups:   country [142]
    ##    country     gdpPercap gdpPercap_max
    ##    <fct>           <dbl>         <dbl>
    ##  1 Afghanistan      978.          978.
    ##  2 Albania         5937.         5937.
    ##  3 Algeria         6223.         6223.
    ##  4 Angola          5523.         5523.
    ##  5 Argentina      12779.        12779.
    ##  6 Australia      34435.        34435.
    ##  7 Austria        36126.        36126.
    ##  8 Bahrain        29796.        29796.
    ##  9 Bangladesh      1391.         1391.
    ## 10 Belgium        33693.        33693.
    ## # … with 132 more rows

# Task 4:

## Produce scatterplot of Canada’s life expectancy vs GDP

### We will pipe from gapminder

### We will use filter () so R returns the row that matches our variable

### We will then pipe to ggplot

### We will use aes() to compute our x and y variables

### We will use geom\_point to compute for our plot’s visuals

### We will use scale\_y\_continuous to present the y axis in log of 10

![](HW_2_files/figure-gfm/scatterplot%20-1.png)<!-- -->

# Exercise 2 : Explore 2 variables with dplyr and ggplot2

# Task 1:

## Quantitative variables. Summary of descriptive statistics and scatterplot. The variables used are; flipper length and body mass of the penguins

### We employ summarize() so R gies us a new data frame where our rows will be \#\#\# combined into one

### We wll use ggplot() int he same way as Exercise 1 Task \#4

    ## # A tibble: 1 x 2
    ##   mu_length mu_weigth
    ##       <dbl>     <dbl>
    ## 1      201.     4202.

    ## Warning: Removed 2 rows containing missing values (geom_point).

![](HW_2_files/figure-gfm/summary%20-1.png)<!-- -->

# Task 2:

## Categorical variable and Quantitative variable. Make summary and useful plots to visualize these variables. The variables used are flipper length and sex of the penguins

### We will use the function group\_by() to then summarise the specific rows we previously grouped

### We will ungroup()

### We will use ggplot() as we had done before, but this time adding geom\_jitter() to add random variability and solve overplotting

    ## `summarise()` has grouped output by 'flipper_length_mm'. You can override using the `.groups` argument.

    ## # A tibble: 99 x 5
    ##    flipper_length_mm sex    count  mean    sd
    ##                <int> <fct>  <int> <dbl> <dbl>
    ##  1               172 female     1   172    NA
    ##  2               174 female     1   174    NA
    ##  3               176 female     1   176    NA
    ##  4               178 female     3   178     0
    ##  5               178 male       1   178    NA
    ##  6               179 <NA>       1   179    NA
    ##  7               180 female     1   180    NA
    ##  8               180 male       3   180     0
    ##  9               180 <NA>       1   180    NA
    ## 10               181 female     6   181     0
    ## # … with 89 more rows

    ## Warning: Removed 2 rows containing missing values (geom_point).

![](HW_2_files/figure-gfm/summarise%20-1.png)<!-- -->

# Bonus Exercise:

## Evaluate this code and describe the result. The goal was to get the data for Rwanda and Afghanistan. Does this work? Why or why not? If not, what is the correct way to do this?

    ## # A tibble: 12 x 6
    ##    country     continent  year lifeExp      pop gdpPercap
    ##    <fct>       <fct>     <int>   <dbl>    <int>     <dbl>
    ##  1 Afghanistan Asia       1957    30.3  9240934      821.
    ##  2 Afghanistan Asia       1967    34.0 11537966      836.
    ##  3 Afghanistan Asia       1977    38.4 14880372      786.
    ##  4 Afghanistan Asia       1987    40.8 13867957      852.
    ##  5 Afghanistan Asia       1997    41.8 22227415      635.
    ##  6 Afghanistan Asia       2007    43.8 31889923      975.
    ##  7 Rwanda      Africa     1952    40    2534927      493.
    ##  8 Rwanda      Africa     1962    43    3051242      597.
    ##  9 Rwanda      Africa     1972    44.6  3992121      591.
    ## 10 Rwanda      Africa     1982    46.2  5507565      882.
    ## 11 Rwanda      Africa     1992    23.6  7290203      737.
    ## 12 Rwanda      Africa     2002    43.4  7852401      786.

### The previous code is filtering gapminder and countries to include Rwanda and Afghanistan, however, a more efficient way to do this is using gapminder and piping ‘%\>%’, which means ‘and then…’ to filter the countries by using ‘%in%’ instead of ‘==’. ‘%in%’ has a similar property than ‘==’ except that it checks the input values against all the other values in the vector.

    ## # A tibble: 24 x 6
    ##    country     continent  year lifeExp      pop gdpPercap
    ##    <fct>       <fct>     <int>   <dbl>    <int>     <dbl>
    ##  1 Afghanistan Asia       1952    28.8  8425333      779.
    ##  2 Afghanistan Asia       1957    30.3  9240934      821.
    ##  3 Afghanistan Asia       1962    32.0 10267083      853.
    ##  4 Afghanistan Asia       1967    34.0 11537966      836.
    ##  5 Afghanistan Asia       1972    36.1 13079460      740.
    ##  6 Afghanistan Asia       1977    38.4 14880372      786.
    ##  7 Afghanistan Asia       1982    39.9 12881816      978.
    ##  8 Afghanistan Asia       1987    40.8 13867957      852.
    ##  9 Afghanistan Asia       1992    41.7 16317921      649.
    ## 10 Afghanistan Asia       1997    41.8 22227415      635.
    ## # … with 14 more rows
