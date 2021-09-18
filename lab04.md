Lab 04 - La Quinta is Spanish for next to Denny’s, Pt. 2
================
Insert your name here
Insert date here

### Load packages and data

``` r
library(tidyverse)
library(dsbox)
```

``` r
states = read_csv("data/states.csv")
```

### Exercise 0

``` r
str_c("Here is an incredible, grandiloquent,", "extreme, terrible, verbose, lengthy, awesome-in-the-original-sense,", "no good and very long line (of code).")
```

    ## [1] "Here is an incredible, grandiloquent,extreme, terrible, verbose, lengthy, awesome-in-the-original-sense,no good and very long line (of code)."

``` r
Bad.Variable.Name = 0
this_is_a_bad_boolean = T
needs_infix_spacing=1*0^0
this = mtcars %>% mutate(needs = mpg * wt) %>% mutate(to_have = hp / cyl) %>%
  mutate(one = "pipe_step") %>% mutate(per = "line")
```

### Exercise 1

Remove this text, and add your answer for Exercise 1 here. Add code
chunks as needed. Don’t forget to label your code chunk. Do not use
spaces in code chunk labels.

### Exercise 2

Remove this text, and add your answer for Exercise 1 here. Add code
chunks as needed. Don’t forget to label your code chunk. Do not use
spaces in code chunk labels.

### Exercise 3

…

### Exercise 4

…

### Exercise 5

### Exercise 6

``` r
source("haversine.R")
```

…Add additional chunks and description for Ex 6 as needed.

…

Add more exercise headings, chunks, etc, as needed.
