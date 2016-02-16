---
layout: page
title: Homework 2
subtitle: Tidying your data with an R script.
comments: true
---

The goal of this week's homework is take your raw data and produce some **tidy** data, using only R to perform any manipulations. Remember:

> Tidy data has one variable per column, and one observation per row.

You will begin with your original data file, in the most raw and untouched form available to you. Here are some steps to follow.

1. create the following directory structure in your project:

```
lastname_firstname
 |
 |--data/
 |--data-raw/
 |--Rscripts/
```

2. Put your raw data file into your `data-raw` directory. (e.g. `2015 Field Season.xls`). You may choose to rename it to remove spaces in the filenames (`2015_Field_season.xls`). **this is the only modification to this file you get to make**. Some people will even modify the file permissions to make it "write only".

3. Start an R script in the `Rscripts/` directory. Call it something intuitive (like `01_data_preparation.R`). I like prefacing my `.R` files with numbers, expressing the order in which they are meant to be run. **don't forget to commit and push as you are writing this file!**

4. read your data in, modify it to make it tidy, then write it out into the `data/` folder. Give it a meaningful name: `data/bromeliad_nitrogen_experiment_2015.csv` for example.

5. commit and push your tidy data file.

## What kind of things should I do?

Here are a few ideas for you to think of while you tidy your data up:

* Do I have any repetitive variables? Were some of these variables calculated from others? use `dplyr::select()` to drop any columns that do not represent actual measurements -- these can be re-calculated later

* Are my variable names sensible? Good variable names are expressive but brief. something like `mass_mg` or `body_mass` is good, something like `total_dry_mass_of_animal` or `m` is bad.  Check out `dplyr::rename()`

* Are my column titles actually variables? It's not uncommon to see one (or more!) variables stored in column names:

| male_junvenile | male_adult | female_juvenile | female_adult |
|:--------------:|:----------:|:---------------:|:------------:|
|     2          |     14     |       7         |    20        |

use `tidyr::gather()` and `separate` to fix this

* Do I have too many repeated rows? You might find that your data would make more sense separated into more than one table, which you could then combine with `dplyr::left_join()`

There are many ways in which a dataset can be untidy. Feel free to ask an Instructor or to confer with each other as you are making these decisions!

## Peer Review

This work will be graded in much the same way -- by a randomly assigned person from the class. They will clone your repository to their computer, read and run all your code, and examine your tidy data. Here are some things they'll be on the lookout for:

#### well commented
Write lots of comments. What are you doing, when and why should all be easy to understand by reading your `.R` files. You can also use the project's README to direct your reviewer to the necessary files!

#### reproducible
You peer reviewer will re-runs your script, to see if they get the same result (i.e. the csv file in `/data` should be writtin anew). They should find that it is recreated **just as it was before** (i.e. git thinks that the file is unchanged.)

In order for this to happen, the paths you use must be _relative_: that is, they should start from the project working directory. That means where the rstudio project file lives. e.g. for a folder setup like this: 

```
lastname_firstname
 |
 | lastname_firstname.Rproj
 |--/data
 |--/data-raw
 |--/Rscripts
            |
            |--01_tidying.R
```

the file `01_tidying.R` starts with reading in data: a relative path like this:

`treedata <- read.csv("data-raw/rawdata.csv")`

#### tidy

What *exactly* that means for your dataset will partly depend on your definitions "observation" and "variable" for your purposes. When in doubt, describe your choices in comments in the data-cleaning file, in the projects README.md or in a README inside `data`. You can never have too much documentation.

#### correct

One simple way of validating your CSV file is to show that it displays nicely on github. 

If you CSV is very large, that approach might not work. In such cases you (and your reviewer) can check your CSV on sites such as [csvlint.io](http://csvlint.io/) and/or [CSVfingerprint](http://setosa.io/csv-fingerprint/)


