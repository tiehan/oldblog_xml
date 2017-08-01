---
author: kbroman
comments: true
date: 2013-04-03 05:48:16+00:00
layout: post
link: http://kbroman.org/blog/2013/04/03/beware-of-grep-with-a-list/
slug: beware-of-grep-with-a-list
title: Beware of grep with a list
wordpress_id: 1630
categories:
- R
tags:
- code
- stupid
---

Another [R](http://r-project.org) tip: beware of `as.character` applied to a list.

[code language="R"]
> as.character( list(letters[1:3], letters[4:6]) )
[1] "c(\"a\", \"b\", \"c\")" "c(\"d\", \"e\", \"f\")"
[/code]

Really, beware of `grep` with a list:

[code language="R"]
> grep("c", list(letters[1:3], letters[4:6]))
[1] 1 2
[/code]

You might have thought that the result would be just `1`, but `grep` expects a vector of character strings.  If the input is not that, it uses `as.character()`.  Since the result of that starts with `"c("`, `grep` finds `"c"` in each.

See the [related discussion](http://stackoverflow.com/questions/7591632/why-this-behavior-when-coercing-a-list-to-character-via-as-character) (from Sept 2011) on [stackoverflow](http://stackoverflow.com).
