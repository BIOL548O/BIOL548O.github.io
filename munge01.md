---
layout: page
title: Data munging
subtitle: using R to make data **tidy**
comments: true
---

## Outline for today

* [Today's slides](slides/munge_slides.html)  
* [What Andrew typed in today](SuppMatt/09_02_2016_notes.R)


### Intro to tidy data
*step 1* download [this data](https://www.dropbox.com/s/5ncuacnd3arjitc/survey_data_tabs.xls?dl=0)  
*step 2* "tidy it up"  
_courtesy of Data Carpentry_

### Intro to R

I'm assuming that you have had some exposure to R already. However, let's review some of the particular tools that we're going to be using

### _Ceci ce n'est pas un pipe_

The pipe operator `%>%` was recently introduced to R and created shockwaves:

```
foo_foo <- little_bunny()

## orthodox R style
bop_on(scoop_up(hop_through(foo_foo, forest), field_mouse), head)

## novel pipe syntax
foo_foo %>%
  hop_through(forest) %>%
  scoop_up(field_mouse) %>%
  bop_on(head)
```
Based on this, how do you think it works?


* `tidyr`
* some project setup


## recommended reading 

* [Tidy data](http://vita.had.co.nz/papers/tidy-data.pdf)
* [`dplyr` vignette](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html) 
* [ten commandments of entering data for R](http://www.seascapemodels.org/rstats/rspatial/2015/11/13/data-commandments.html)

You can also see these from Rstudio if you type `browseVignettes(package = "dplyr")`

## Homework 2 is coming up! 

Come next class (Thursday) with the most _raw_ version of your data you can find. This might be the spreadsheet you typed in when you recorded your data, or which was emailed to you. It may be a series of text files that you received from your instrument. It might even be a link to a shared folder on Dropbox, or some other online source of information.