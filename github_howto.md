---
layout: page
title: Notes on running a class on github
subtitle: Reference notes
comments: true
---

## Introduction

The first run of BIOL548O ("Dealing with Data") is being taught entirely through GitHub. This is an approach inspired by STAT545/547. In both courses, the intention is that students will get practical experience in creating and managing their projects via git. It also has the potential to help the course instructor manage assignments and grades, etc.

This document is for notes that I am taking about using GitHub in the classroom. I mean it mostly as a personal reference, but also as a place to discuss with instructors of other courses. It will eventually serve as a guide for whoever takes this course over from me, should they wish to apply the same approach in the future.

## organization setup

* created the organization on github, added other course Instructor (there are two this year, myself and Diane) as owners. 
* applied for the GitHub educational discount for the course. asked for a large number of private repositories (more than i would need, 30 or 50 i forget exactly how many)
* How can you find out how many private repositories you have? You go to `Settings > Billing`. As of 2016, GitHub granted BIOL548O a "Gold" plan, giving us 50 private repositories. 

## adding people to the github organization

* In STAT545, data about each student was collected in a Shiny app -- including their GitHub username. I considered doing that here as well, or using a Google Form
* Instead, I decided on the Human Touch -- on the 2nd lecture, I asked the students to take turns introducing themselves and stating  
    - their actual name
    - their github username
    - what kind of data they deal with
* As each student introduced themselves, I manually added them to the organization. This led to me typing on the screen while the student was talking about themselves. 
* Pros and cons of this approach
    - *PRO* 
        + I actually got to meet everyone. Adding the username gave the proceedings a bit of practical significance, instead of the rote "name/lab/thesis" introduction we are all used to giving.
        + other students got to hear their peer's usernames. Since online collaboration is an important part of this course, its important that they know who they are dealing with.
        + So easy! it allowed me to defer studying the GitHub API
    - *CON*
        + Would scale TERRIBLY. This was only possible because about 20 people are involved.
        + Weird typos, either in original usernames or in my typing of them, slowed down that process.
* I added *everybody* to this course. Literally everybody. Students and Instructors, of course, but also auditors, unofficial auditors, friendly postdocs, interested grad students, and one colleague in another country. 
    - my motivation for liberal course membership: Keeping track of _all_ interested parties, to spare myself having to coordinate things through "connect" (the UBC course management thing). This list is incomplete (ie doesn't catch those impermanent groups). Also I find the UI for Connect a little stressful (why are there so many menus! v distressing)

## Github API stuff -- permissions, teams

* I started trying to learn the [github API](https://developer.github.com/v3/), especially as expressed in R by [Gabor Csardi's R package `gh`](https://github.com/gaborcsardi/gh)
* I quickly realized that decisions about the entire course organization need to be taken before you start organizing people. That's why i wanted to write everything down now: to record those decisions.

Here is a running list of all the Clicky Business you need to do to set up an organization like this:
    * Get yourself [a very permissive and powerful github API token](https://github.com/settings/tokens). The only thing I left off of my token was "Delete", because Future Andrew is an imperfect fellow.
    * Manually add students to the organization: go to the [people tab](https://github.com/orgs/BIOL548O/people) of the organization and click "Invite member"
    * _this is the stage where they created their own repositories_
    * Go to `BIOL548O > Settings > Member Privileges` and under `Default repository permission` set it to **"None"**.

### how to see what is going on

*who can see this repo*: go to a repo, click `Settings > Collaborators & teams` and it shows up there. 

In the setup I described above, you end up with (at least at the beginning) students having Admin access for one repo only: the one they created. Presumably they can also Read any public repository (just as anyone could) but they can't push commits anywhere else.  
I like that. This way, they can have ownership of this repository: they could even (i think?) add an outside person (supervisor, friend) if they wanted.

*what can this individual see*: go to "People" and click "manage access" next to their name. You can see here what repositories they have access to. You can also click on the (very confusingly named) "manage access" button (how far does this rabbithole go?) to see *why* they have access to it. I like that, too.
   

### Private repositories -- student created

* I wanted each student to create their own private repository. I felt it was important that they experience the workflow (rather than have a repository handed to them). That happened in Lecture 2
* Well, it _seemed_ OK. But there were Problems:
    - I asked students to keep their repositories in a standard format: `lastname_firstname`. In a room of 20 people at least one person wrote their name down as `lastname-firstname`. Potentially a snag for later when I am using R to process course stuff (the worse because at least one student has a hyphenated last name, so splitting repos base on `-` OR `_` will give the wrong answer). Will report back here.
        + What should I do when students give their repos inconsistent names? Ask the student to correct their error? That *might* work, but would cause headaches. Because of our workflow, the student would need to modify the name of their repository, the name of the folder and the RStudio project file name, too. Then Rstudio would get confused, and the student would get confused..
    - When we looked at the MIT Licence after cloning our repositories, it said (to my dismay) that the copyright was to the Organization name ("BIOL548O"). I had hoped that it would be the student's name. However, only *teams* can own repos in GitHub. That brings me to my next point:

### Teams and permissions

* When i added the students to the organization, and asked them to create private repositories, I noticed later that the default setting is that all members can see all private repos.
    - *why that's bad* 
        + Compromises privacy quite a bit (it is one thing for students to review each other's work, but perhaps too much for all students to see all work all the time)
        + Enables copying and plagiarism (not, of course, that I think this is possible/probable in a course of about a dozen close colleagues. But if this were to scale it would be a problem)
        + no privacy for Instructors! for those things that an Instructor would like to have in private. Like their kludgy GitHub API code manipulation. Or, idk, minor things like ***student marks***
    - *why its sort of OK*
        + It looks a bit more like how a lab would organize itself. I mean within a lab it makes sense that everyone should be able to read (and perhaps even modify) all projects. Enabling collaboration even within private repos. So if we're teaching practical skills, why not teach them practically?
        + It would certainly be easier to organize peer reviews!
* Despite the (considerable!) convenience to myself, I decided that it was necessary to shut down access to all private repos.

#### Organizational teams

There are a few teams and things I know for sure I want:

* `all` : a team for absolutely everybody. To be used in broadcast announcements.
* `students`: just the students, for announcements that pertain only to actual work.
* `auditors`: just because it seems polite to include em. Even though technically an instructor is not required to actually *do* anything with auditors, so I guess there is no official need to interact with them as a group.
* `instructors`: for access to the student grades / "instructorsonly" repository

#### Student teams

* in STAT545, each student was on a singleton team, just for them. That team was the owner of their own repo. I want to try to import this system here:
* I _think_ that marking proceeded like this: 
    - *STUDENT*
        + Student does homework, pushes to their repo (owned by their team. they have push access)
    - *Instructor*
        + Peer reviewer is selected by random process: `combn(students, 2)` etc, with perhaps some finesse to make sure that duplicates are impossible
        + peer reviewer's team is added to repository (or rather, that repository is added to reviewer's team)
    - Issue is opened on _student's_ repo: "Peer review of `<student>` by `<reviewer>`", and reviewer is assigned.  This issue contains:
        + Hi (reviwer name) (maybe reviwer github handle)
        + link to general rubric + general rules for review (be nice, don't plagarize, etc)
        + specific information about what this review should be
        + due date
    - Issue given tags "homework" with number and "peer review" with number? 
    - *REVIEWER*
        + reviewer submits marks and feedback -- on the issue? in a google form? if the former then should be in som standard format. If the latter, should be also communicated to student somehow (could be simply in an unstructured form on the issue)
        + both issue and form feedback need to be done by the due date.
    - *INSTRUCTOR AGAIN*
        + closes issue.

Alternatively:

* *STUDENT*
    - students push a branch containing their changes since last homework was completed
    - students open a PR. that counts as their "submission" of the homework.
* *INSTRUCTOR*
    - reviewr randomly assigned (as above) and assigned to issue.
* *REVIEWER*
    - reviewer submits comments as both comments on the issue and inline comments on the diff.
* *STUDENT (possibly optional)*
    - student responds to those comments
* *INSTRUCTOR*
    - instructor confirms that 
        1. reviewer comments are done 
        2. reviewer grade is registered on a form.
    - creates comment, acknowledging review is complete and informing student they can merge
        + make sure you merge before next assignment.
        + delete your branches
        + reviewer, remember to delete your clone (if any).
