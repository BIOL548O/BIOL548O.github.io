Complete
================
Andrew MacDonald
February 11, 2016

``` r
library(knitr)
library(tidyr)
```

``` r
kelpdf <- data.frame(
  Year = c(1999, 2000, 2004, 1999, 2004),
  Taxon = c("Saccharina", "Saccharina", "Saccharina", "Agarum", "Agarum"),
  Abundance = c(4,5,2,1,8)
  
)

kable(kelpdf)
```

|  Year| Taxon      |  Abundance|
|-----:|:-----------|----------:|
|  1999| Saccharina |          4|
|  2000| Saccharina |          5|
|  2004| Saccharina |          2|
|  1999| Agarum     |          1|
|  2004| Agarum     |          8|

``` r
kelpdf %>% 
  complete(Year, Taxon) %>% 
  kable
```

|  Year| Taxon      |  Abundance|
|-----:|:-----------|----------:|
|  1999| Agarum     |          1|
|  1999| Saccharina |          4|
|  2000| Agarum     |         NA|
|  2000| Saccharina |          5|
|  2004| Agarum     |          8|
|  2004| Saccharina |          2|
