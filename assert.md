---
layout: page
title: Assertions in R
subtitle: Hey, are you sure about that data?
comments: true
---


Introduction
------------

You've recently obtained some data. How can you tell if it is correct? What if you have:

-   many datasets
-   Data produced by many collaborators
-   Data from a past project in your lab ("\#otherpeoplesdata")
-   meta-analysis datasets
-   Internet data, from an API or from scraping
-   data from a particularly *experimental* simulation?

How can you tell if the numbers you have make any sense? (also called "sanity checking")

We'll try out the practice of asserting data by using the gapminder dataset:

``` r
library(gapminder)
```

And we'll be using an R package specifically designed to work with data assertions: `assertr`, by Tony Fischetti ([github page](https://github.com/tonyfischetti/assertr) and [rOpenSci community call with Tony](https://vimeo.com/141906295))

``` r
# install.packages("assertr")
# devtools::
library(assertr)
```

What do we know about the dataset
---------------------------------

The first step in checking whether we have a problem in a dataset is to try to think of what reasonable properties of the data *should* be.

Let's begin by looking at the top of gapminder:

``` r
knitr::kable(head(gapminder))
```

| country     | continent |  year|  lifeExp|       pop|  gdpPercap|
|:------------|:----------|-----:|--------:|---------:|----------:|
| Afghanistan | Asia      |  1952|   28.801|   8425333|   779.4453|
| Afghanistan | Asia      |  1957|   30.332|   9240934|   820.8530|
| Afghanistan | Asia      |  1962|   31.997|  10267083|   853.1007|
| Afghanistan | Asia      |  1967|   34.020|  11537966|   836.1971|
| Afghanistan | Asia      |  1972|   36.088|  13079460|   739.9811|
| Afghanistan | Asia      |  1977|   38.438|  14880372|   786.1134|

-   `country`: should probably be a country that exists in the world. Any additions to gapminder should contain the same countries, spelt the same way.
-   `continent`: similarly, there are only five continents (Asia, Europe, Africa, Americas, Oceania) and any new data should match those.
-   `lifeExp`: must always be a positive real number
-   `pop`: always a positive integer
-   `gdpPercap`:

Data checking in base R
-----------------------

What base R functions exist for checking the same thing?

``` r
stopifnot(gapminder$lifeExp > 0)
```

perfectly good way to test data! However, not perfectly flexible, and rather difficult to chain:

``` r
library(magrittr)

gapminder %>% 
  {stopifnot(.[["lifExp"]] > 0);stopifnot(.[["pop"]] > 0)}
```

.. that's rather awkward.

Fortunately, we have `assertr`!

Assertr gives us several functions. They take the dataset as the first argument (perfect for piping) and run a test on it. If it fails, the function causes an error. If everything is OK, they return the dataset so that it can be piped to a new test (or into an analysis)

### `verify`

The most straightforward function in assertr is `verify()`. It evaluates a logical expression (`>` or `==` or `<` etc) using a data frame. That lets us check some general properties of a dataset.

``` r
gm <- gapminder %>% 
  verify(nrow(.) == 1704) %>% 
  verify(ncol(.) == 6) %>% 
  verify(is.factor(.$continent)) %>% 
  verify(length(levels(.$continent)) == 5)
```

So far so good! While this is good for checking the dataset at a coarse level, it doesn't tell us *where* the unusual numbers are:

``` r
# gapminder %>% 
#   verify(lifeExp > 30)
```

### `assert`

`assert` evaluates a *predicate function* on a column of a dataset, and indentifies where the predicate returns `FALSE`.

-   a predicate function is any function that will give you `TRUE` or `FALSE` for every element in a vector. `is.na()` is a common example.

Here, we can't write `pop > 0`, we need to write this in terms of a function. Fortunately, `assertr` supplies some flexible predicates for us:

``` r
gm2 <- gapminder %>% 
  assert(within_bounds(0,Inf), pop)
```

### `assert` has the Power of `dplyr::select`

You can use the same syntax that you are familiar with from `dplyr` to select columns in `assertr`. That means less typing!

``` r
gm2 <- gapminder %>% 
  assert(within_bounds(0, Inf), lifeExp:gdpPercap)
```

Let's meet the other handy predicates:

``` r
## let us have a vector of all continents
all_continents <- levels(gapminder$continent)
all_continents
```

    ## [1] "Africa"   "Americas" "Asia"     "Europe"   "Oceania"

``` r
gm2 <- gapminder %>% 
  ## check for missing values
  assert(not_na, country:gdpPercap) %>% 
  ## check that all continents are matching
  assert(in_set(all_continents), continent) %>% 
  assert(within_bounds(0, Inf), lifeExp:gdpPercap)
```

We can also cook up our own predicate:

``` r
is_factor <- function(x) is.factor(x)

gm_fac <- gapminder %>% 
  assert(is_factor, country, continent)
```

> *challenge!* write a function to test if population is an integer. (Note that it is probably not stored as an integer in your present data.frame)

final exercise
--------------

*Announcement: some new 2016 data has been recorded for gapminder!*
Let's check this data before we combine it with the official dataset:

**Step 1**: write down some assertions which pass for all of gapminder

**Step 2**: download [this file](SuppMatt/gapminder_2016.csv) and see if you can find all the errors!
