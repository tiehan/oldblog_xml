---
author: kbroman
comments: true
date: 2013-05-10 16:35:03+00:00
layout: post
link: http://kbroman.org/blog/2013/05/10/tutorials-on-gitgithub-and-gnu-make/
slug: tutorials-on-gitgithub-and-gnu-make
title: Tutorials on git/github and GNU make
wordpress_id: 1760
categories:
- Programming
- R
- Statistics
tags:
- programming
- reproducible research
- teaching
---

If you're not using version control, you should be.  _Learn [git](http://git-scm.com)_.

If you're not on [github](http://github.com), you should be.  That's _real_ open source.

To help some colleagues get started with [git](http://git-scm.com) and [github](http://github.com), I wrote a [minimal tutorial](http://kbroman.github.io/github_tutorial). There are lots of git and github resources available, but I thought I'd give just the bare minimum to get started; after using git and github for a while, other resources make a lot more sense and seem much more worthwhile.

And for [R](http://r-project.org) folks, note that it's easy to install R packages that are hosted on github, using [Hadley Wickham](http://had.co.nz)'s [devtools](https://github.com/hadley/devtools) package.  For example, to install [Nacho Caballero](https://github.com/nachocab)'s [clickme](https://github.com/nachocab/clickme) package:

[sourcecode language="r"]
install.packages("devtools")
library(devtools)
install_github("clickme", "nachocab")
[/sourcecode]

Having written that git/github tutorial, I thought: I should write more such!

So I immediately wrote [a similar short tutorial](http://kbroman.github.io/minimal_make) on [GNU make](http://www.gnu.org/software/make), which I think is the _most important tool_ for reproducible research.
