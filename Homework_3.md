---
layout: page
title: Homework 3
subtitle: Assertions and Metadata
comments: true
---

### First part -- respond to your reviewers from last week.

Peer reviewers probably raised a couple of very important points in the process of reviewing  your work. Try to address these: edit your code and re-run it. Commit and push both the modified code and the new data (if it actually different). 

In particular, be wary of doing things that make your R code irreproducible: `setwd()`, `attach`, and setting an absolute path e.g. `read.csv("/home/andrew/Documents/projects/BIOL548O/BIOL548O.github.io/gapminder.csv")` rather than a relative path (e.g. assuming the project directory is `/home/andrew/Documents/projects/BIOL548O`, you only need to specify the remaining (relative) part of the path: `read.csv("BIOL548O.github.io/gapminder.csv")`).  The project directory is already set to your `lastname_firstname` folder, because that is where the `.Rproj` file is!

### Second part -- Assertions and metadata

In the last two classes we practiced writing assertions and metadata. Apply these skills to your dataset to test and document it.  

* add another file to your `Rscripts` directory. This is a good time to start thinking about your file naming convention. A popular approach is to preface R scripts with `01_` and `02_` etc, to indicate the order in which they are meant to be run. 
* This R script can have two parts (after the normal reading in of data): first write some assertions, then write the metadata. (alternatively, split it into two parts).
* *Writing Assertions* Use the `assertr` package to write some simple statements about your study. These are especially useful if they describe what _another, uncollected_ dataset would look like. (ie if somebody repeats your study, or if more observations are collected in the same way). Here's some ideas:
    -  Species names come from the correct set
    -  Measurement values fall in a biologically realistic range
    -  Dates are in a plausible range
    -  Columns have correct types
*  *Writing metadata* Use one of the machine-readable data formats we discussed in class. 
    -  EML
    -  CSVY
    -  datapackage
