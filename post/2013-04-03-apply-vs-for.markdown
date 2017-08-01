---
author: kbroman
comments: true
date: 2013-04-03 04:44:25+00:00
layout: post
link: http://kbroman.org/blog/2013/04/02/apply-vs-for/
slug: apply-vs-for
title: apply vs for
wordpress_id: 1610
categories:
- R
tags:
- code
---

It's widely understood that, in [R](http://r-project.org) programming, one should avoid `for` loops and always try to use `apply`-type functions.

But this isn't entirely true.  It may have been true for Splus, back in the day: As  I recall, that had to do with the entire environment from each iteration being retained in memory.

Here's a simple example:

[code language="R"]
> x <- matrix(rnorm(4000*40000), ncol=4000)

> system.time({
+     mx <- rep(NA, nrow(x))
+     for(i in 1:nrow(x)) mx[i] <- max(x[i,])
+  })
   user  system elapsed
  3.719   0.446   4.164

> system.time(mx2 <- apply(x, 1, max))
   user  system elapsed
  5.548   1.783   7.333
[/code]

There's [a great commentary on this point](http://www.r-project.org/doc/Rnews/Rnews_2008-1.pdf) by Uwe Ligges and John Fox in the May, 2008, issue of R News (see the "R help desk", starting on page 46, and note that R News is now the [R Journal](http://journal.r-project.org)).

Also see [the related discussion](http://stackoverflow.com/questions/7142767/why-are-loops-slow-in-r/7142982#7142982) at [stackoverflow](http://stackoverflow.com).

They say that `apply` can be more readable.  It can certainly be more compact, but I usually find a `for` loop to be more readable, perhaps because I'm a C programmer first and an R programmer second.

A key point, from Ligges and Fox: "Initialize new objects to full length before the loop, rather than increasing their size within the loop."
