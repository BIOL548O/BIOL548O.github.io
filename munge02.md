---
layout: page
title: Data munging part 2
subtitle: joins and reshaping
comments: true
---

## Outline for today

* [slides for today](slides/munge_slides02.html)
* review of the basics, and intro to `tidyr`: [basic data manipulations](tidyr.html)
* we'll practice tidying data with [wide format gapminder](SuppMatt/gapminder_wide.csv)
* joins
* `tidyr`
* some project setup
* start work on Homework 2

## How can I tell if my data is "Tidy"?

There are two basic principles to look for when deciding how to organize a dataset:

1. There should be one observation per row, and one variable per column
2. Rows should be repeated as little as possible. If you have a lot of repeated rows, consider separating the data into two groups and using a *join*

## When do use different columns, and when to use a single factor?

Today we'll be practicing a lot with two functions from `tidyr`: `gather()` and `spread()`. These functions move data back and forth between what is often called "wide" and "long" format. It can be tricky to determine if your data is, or should be, wide or long. Is a group of columns a series of different variables, or are they actually different observations of the same variable? Here is a quote from Wickham's `tidyr` vignette:

> A general rule of thumb is that it is easier to describe functional relationships between variables (e.g., `z` is a linear combination of `x` and `y`, `density` is the ratio of `weight` to `volume`) than between rows, and it is easier to make comparisons between groups of observations (e.g., average of group a vs. average of group b) than between groups of columns.

In biology, the variables that describe groups are often physical location (e.g. site or block) and/or experimental treatment. Keep this kind of information as values in the same column (i.e. as different levels of a factor "Site_name" or Block"). This makes it easy to compare averages across, say, different sites.

We also often measure the different responses for each of our study units. For example, you might measure the surface area and mass of a leaf. Keep these as the names of separate columns. This makes it easy to do calculations (e.g. SLA = mass / area)  

Sometimes, it is harder to tell. Then, you have to rely on your knowledge as a biologist -- what are you planning on doing with these data? that will shape your analysis. 

## Homework 2

***clean your data***

The goal that I want to achieve for *everyone* with this assignment is how to process data with code accurately. However, where you end up will depend a lot on where you begin.  

