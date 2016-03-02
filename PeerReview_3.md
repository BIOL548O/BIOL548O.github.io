---
layout: page
title: Peer Review 3
subtitle: Code and Data review
comments: true
---

The goal of this Peer Review is twofold: 

* To help our colleagues perform "quality control" on their *tidy data*, and to document that data with clear metadata.
* To practice applying your own data skills to unfamiliar data.

A template for your Review is below. **Copy and paste this in response to the GitHub Issue that announces your review**

### reusing your reviewee's data!

* To demonstrate that their metadata is complete by interpreting their data without asking them questions 
* To practice your dplyr and tidyr skills on a new and unfamiliar dataset
* FUN! 

Here are some ideas of what you can do:

* Write a few new assertions
* Do some statistics (anova, linear regression -- very simple is fine)
* Visualize their data
* use `dplyr` to calculate some new summary statistics

> Tip: format your R code so that it looks good on the issue! put a row of three backticks right before your code and right after it. This is called a fenced code block [see this link for more info](https://help.github.com/articles/creating-and-highlighting-code-blocks/#fenced-code-blocks). 


> Tip: you can [link to specific lines of code](http://stackoverflow.com/questions/23821235/how-to-link-to-specific-line-number-on-github) on GitHub by clicking on them and using the new URL


*Please don't keep a copy of your reviewee's data!*

## Template:

```
## organization

*Did your reviewee follow the directory naming convention that we are using? Was it easy to find the different R scripts?*

YOUR WORDS HERE

## documentation

*Review the code that performs the assertions. Are the comments in the code readable? Are there any lines of code that appear without any description of what they are doing?*

YOUR WORDS HERE

## Assertions

*what things does your reviewee test for in the assertions? Is anything missing? Suggest an improvement to their quality control*

YOUR WORDS HERE

## Metadata (two parts)

### clear and human-readable

*Is the metadata thorough? When, where and how was this work done? Do you have any questions about what the data mean?* 

YOUR WORDS HERE

### correct and machine-readable

*Choose one from below (depending on what your reviewee has done) and describe how to fix any problems you find:*

* `EML` -- use the function `eml_read()` from the `EML` package. Will it read into R?
* `csvy` -- copy and paste the YAML information into [this validator](http://codebeautify.org/yaml-validator) and click "Validate".
* `datapackage` -- copy and paste the `datapackage.json` file into [this validator](http://jsonlint.com/) and click "Validate"

YOUR WORDS HERE

# Reuse your colleagues data

*Do something with your reviewee's data! Write an R script that reads the data in, then does something. Don't forget to write comments!*  
*Paste the entire R script you wrote below, inside a fenced code block*  
*If you've made a plot, you can add that in a separate comment*

YOUR CODE HERE

```

