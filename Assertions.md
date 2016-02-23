---
layout: page
title: Assertions in R
subtitle: Hey, are you sure about that data?
comments: true
---

## Outline for today

* Review of the Homework -- any interesting challenges or questions?
* an [Introduction to `assertr`](assert.html)
* Outline of the Peer Review 2 process

Here is a template for Peer Review 2. **Copy and paste this in response to the GitHub Issue that announces your review**

```
## organization

Did your reviewee follow the directory naming convention that we are using? Was it easy to find the data cleaning script?

YOUR WORDS HERE

## reproducible

Open the data cleaning script and run it all, either by sourcing or by highlighting and click Run all

What happened? Did the final data file recreate itself? Why or why not? What changes need to be made to the data cleaning code to allow it to run on your machine?

YOUR WORDS HERE
  

## documented

Are the comments in the code readable? Are there any lines of code that appear without any description of what they are doing?

YOUR WORDS HERE

## efficient

What transformations or manipulations is your reviewee performing? Are any done with more code than is necessary? For example, are they using their own code to solve a problem that is already handled in `dplyr` or `tidyr`? **suggest something they could do differently**

> _tip: suggest new code to your reviewee by typing three backticks before and after your suggestion_
> _tip: linking to lines of code on github_

YOUR WORDS HERE


## output is tidy

Tidy data has one observation in each row, and one variable in each column. Does that appear to be true of your reviewee's dataset? Is there another form you could suggest?

YOUR WORDS HERE

## output is correct

check either on Github or via a real CSV validator.
```