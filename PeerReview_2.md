---
layout: page
title: Peer Review 2
subtitle: Code and Data review
comments: true
---

The goal of this Peer Review is to help our colleagues to write *clear, readable code* which creates *tidy data*.

> _tip: suggest new code to your reviewee by typing three backticks before and after your suggestion_

> _tip: you can [link to specific lines of code](http://stackoverflow.com/questions/23821235/how-to-link-to-specific-line-number-on-github) on GitHub by clicking on them and using the new URL_


*Please don't keep a copy of your reviewee's data!*


Here is a template for Peer Review 2. **Copy and paste this in response to the GitHub Issue that announces your review**

```
## organization

Did your reviewee follow the directory naming convention that we are using? Was it easy to find the data cleaning script?

YOUR WORDS HERE

## reproducible

Open the data cleaning script and run it all, either by sourcing or by highlighting and click Run all

What happened? Did the final data file recreate itself? Why or why not? What changes need to be made to the script to allow it to run on your machine?

YOUR WORDS HERE

## documented

Are the comments in the code readable? Are there any lines of code that appear without any description of what they are doing?

YOUR WORDS HERE

## efficient

What transformations or manipulations is your reviewee performing? Are any done with more code than is necessary? For example, are they using their own code to solve a problem that is already handled in `dplyr` or `tidyr`? **suggest something they could do differently**

YOUR WORDS HERE


## output is tidy

Tidy data has one observation in each row, and one variable in each column. Does that appear to be true of your reviewee's dataset? Is there another form you could suggest?

YOUR WORDS HERE

## output is correct

check either on Github or via a real CSV validator such as [csvlint.io](http://csvlint.io/) and/or [CSVfingerprint](http://setosa.io/csv-fingerprint/)

YOUR WORDS HERE

```

