---
layout: page
title: Installation
subtitle: getting your software ready for class
comments: true
---


## Installing software

In this course, we're going to use open-source software to learn how to manage and share data. Our hope is to provide you with a basic level of comfort with all of these tools, which you can use in your future projects!

You will need five things during this course:

* a laptop
* git
* a GitHub account
* R
* Rstudio (an IDE for R)

Please see installation instructions below for all the different software tools you need. These are modified from several sources, mostly from [Jenny Bryan's](http://www.stat.ubc.ca/~jenny/) excellent [STAT545 website](http://stat545-ubc.github.io/)


## Git and Github

`git` is a command-line program for doing "version control" : that is, for tracking changes to a group of files all at once. We're going to use it to track changes to our research project (i.e. data and the code that manipulates the data).

### Git installation: Windows

We reccommend this approach, following [Software Carpentry](http://software-carpentry.org), an organization that "teaches lab skills for scientific computing" (and also STAT545):

  * Install [Git for Windows](https://git-for-windows.github.io/), previously known as `msysgit` or "Git Bash", to get Git in addition to some other useful tools, such as the Bash [shell](git09_shell.html). 
      - Yes, all those names are totally confusing.
  * This approach leaves the Git executable in a conventional location, which will help you and other programs, e.g. RStudio, find it and use it. 

### Git installation: Mac

**Option 1** (*recommended*): Install Git from here: <http://git-scm.com/downloads>.

  * The GitHub home for this project is here: <https://github.com/timcharper/git_osx_installer>.
  * This arguably sets you up the best for the future and should "just work" for most people. It will certainly get you the latest version of Git of all approaches described here. It is the most widely recommended installation method.
  * Here's a list of maintained builds for various combinations of Git and Mac OS version: [`git-osx-installer` on sourceforge](http://sourceforge.net/projects/git-osx-installer/files/?source=navbar). If your OS version is not there -- I'm talking to you 10.7 Lion people -- we've had recent success with binaries found here: <https://www.wandisco.com/git/download>. 


### Git installation: Linux

If Git is not already available on your machine you can install it via your distro's package manager (e.g. `apt-get` or `yum`).

Ubuntu or Debian Linux

```
sudo apt-get install git
```

Fedora or RedHat Linux

```
sudo yum install git
```

### Register a GitHub account

  * [Github](https://github.com/) is an increasingly popular website for sharing code and data. It is an excellent platform for collaborating on projects, including scientific manuscripts.
  * Register for a free individual GitHub account and request [the student discount](https://education.github.com). This should give you some free private repositories for a couple of years.
    - Give your public profile name some thought. I suggest you use a real name and begin to build a scholarly identity in social media and coding, but it's a decision you should make with intention.
  * We will elicit your GitHub username soon so we can add you to the [BIOL 548O GitHub Organization](https://github.com/BIOL548O).


## R and RStudio

  * Install [R, a free software environment for statistical computing and graphics](http://www.r-project.org) from [CRAN](http://cran.rstudio.com), the Comprehensive R Archive Network. Install the precompiled binary for your Operating system.

  * Install [RStudio's IDE](http://www.rstudio.com/products/rstudio) (stands for _integrated development environment_), a powerful user interface for R. Get the Open Source Edition of RStudio Desktop.

    - I __highly recommend__ you run the [Preview version](https://www.rstudio.com/products/rstudio/download/preview/). I find these quite stable and you'll get the cool new features! Update to new Preview versions often.
    - RStudio comes with a __text editor__, so there is no immediate need to install a separate stand-alone editor.
    - RStudio can __interface with Git(Hub)__. However, you must do all the Git(Hub) set up before you can take advantage of this.
    
If you have a pre-existing installation of R and/or RStudio, we __highly recommend__ that you reinstall both and get as current as possible. It can be considerably harder to run old software than new.

  * If you upgrade R, you will need to update any packages you have installed. The command below should get you started, though you may need to specify more arguments if, e.g., you have been using a non-default library for your packages.

```
    update.packages(ask = FALSE, checkBuilt = TRUE)
```

  Note: this will only look for updates on CRAN. So if you use a package that lives *only* on GitHub or if you want a develoment version from GitHub, you will need to  update manually, e.g. via `devtools::install_github()`.

### Testing testing

* Do whatever is appropriate for your OS to launch RStudio. You should get a window similar to the screenshot you see [here](http://www.rstudio.com/wp-content/uploads/2014/04/rstudio-workbench.png), but yours will be more boring because you haven't written any code or made any figures yet!

* Put your cursor in the pane labelled Console, which is where you interact with the live R process. Create a simple object with code like `x <- 2 * 4` (followed by enter or return). Then inspect the `x` object by typing `x` followed by enter or return. You should see the value 8 print to screen. If yes, you've succeeded in installing R and RStudio.

### Next steps

After installation, you still need to [introduce yourself to Git](01_git_introduce.html) and [get it to remember your GitHub username and password](01_git_cache.html). If your Git client guides you through this, seize that opportunity! Otherwise follow the links for some assistance.

### Add-on packages

R is an extensible system and many people share useful code they have developed as a _package_ via CRAN and GitHub. To install a package from CRAN, for example the [`dplyr`](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)  package for data manipulation, here is one way to do it in the R console (there are others).

```
install.packages("dplyr", dependencies = TRUE)
```

By including `dependencies = TRUE`, we are being explicit and extra-careful to install any additional packages the target package, `dplyr` in the example above, needs to have around.

You could use the above method to install the following packages, all of which we will use:

  * `tidyr`, [package webpage](https://cran.r-project.org/web/packages/tidyr/index.html)
  * `ggplot2` [package webpage](http://docs.ggplot2.org/)
  * `EML` [package webpage](https://github.com/ropensci/EML)

### Further resources

The above will get your basic setup ready but here are some links if you are interested in reading a bit further.

  * How to Use RStudio
    - <https://support.rstudio.com/hc/en-us>
  * RStudio's leads for learning R
    - <https://support.rstudio.com/hc/en-us/articles/200717153-Getting-Help-with-R>
  * R FAQ:
    - <http://cran.r-project.org/doc/FAQ/R-FAQ.html>
  * R Installation and Administration
    - <http://cran.r-project.org/doc/manuals/R-admin.html>
  * More about add-on packages in the R Installation and Administration Manual
     - <https://cran.r-project.org/doc/manuals/R-admin.html#Add_002don-packages>

Eventually we will want you to connect RStudio and Git(Hub) (see next item about installing Git), so if things are going really well, give that a try.

If you have a pre-existing installation of R and/or RStudio, we **highly recommend** that you reinstall and upgrade to the most recent version. It is very easy and RStudio, specifically, is changing rapidly and positively (written 2015-09). If you upgrade R, you will need to also update any packages you have installed.