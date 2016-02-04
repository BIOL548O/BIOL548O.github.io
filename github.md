---
layout: page
title: GitHub and project setup
subtitle: the infrastructure of collaboration
comments: true
---

## Content outline

* Let's introduce ourselves to each other (and join the [course github organization](https://github.com/BIOL548O/))
* set up your private repository for your project
    - make a new private repository called `yourlastname_yourfirstname`
    - give it a description
    - choose "Private"
    - under "add .gitignore:" choose **R**
    - under "add a license:" choose **MIT License**
    - click "Create Repository"

![illustration](img/start_repo.png)

* On the next screen you will see the beginning of your repository. Copy the link at the top of the page.

* Open Rstudio
    - select `File > New Project`
    - select `From Version Control > git`
    - paste in the link to your new repository
    - Take charge of where this goes! **consider creating a dedicated `Projects/` directory**

If all has gone well, you should now have a new folder on your computer, containing the files that were created on GitHub. Let's take a look at what you have so far:

###  license

We've chosen the MIT license, which is a common and very permissive license.

    The MIT License (MIT)

    Copyright (c) 2016 BIOL548O

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

### .gitignore

This file expresses patterns of filenames that we want to ignore.

* Try adding a file name (e.g. `bigdata.nextgen`) to your directory. Notice how it appears in Rstudio. 
* Then add the line `*.nextgen` to the `.gitignore`. Notice how the Rstudio window has changed.

### README

This file explains your project to your audience on Github. At present, your audience will not extend beyond this room. In the near future, it may extend to the whole Internet!

* with the help of Rstudio, let's practice some markdown basics.

## project setup

We're going to set up a basic structure for our project. Here is a template from the [Ropensci/rrrpkg](https://github.com/ropensci/rrrpkg)


***Getting started with a research compendium***

* Start simple - it’s ok to have just one R script or one R markdown file. But as you get more complex and start to break into multiple files, that you should follow these simple conventions described above
* A simple example of a research compendium might look like this:

```
project
|- DESCRIPTION          # project metadata and dependencies 
|- README.md            # top-level description of content and guide to users
|
|- data/                # raw data, not changed once created
|  +- my_data.csv       # data files in open formats such as TXT, CSV, TSV, etc.
|
|- analysis/            # any programmatic code 
|  +- my_scripts.R      # R code used to analyse and visualise data 
```
