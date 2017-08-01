---
author: kbroman
comments: true
date: 2014-04-30 03:36:04+00:00
layout: post
link: http://kbroman.org/blog/2014/04/29/with-the-apply-functions-revisited/
slug: with-the-apply-functions-revisited
title: '"[" with the apply() functions, revisited'
wordpress_id: 2056
categories:
- R
tags:
- code
---

I'd [mentioned in the fall](http://kbroman.org/blog/2013/08/20/and-with-the-apply-functions/) that one could use `"["` in the `apply`-type functions, like this:

[sourcecode]
id <- c("ZYY-43S-CWA3", "6YU-F4B-VD2I")
sapply(strsplit(id, "-"), "[", 2)
[/sourcecode]

I just realized that you can use this with matrices, too. If you have a list of matrices, you can pull out rows and columns with this technique.

[sourcecode]
z <- list(matrix(1:10, nrow=2), matrix(11:20, nrow=2))
lapply(z, "[", 1, )
lapply(z, "[", , 3)
[/sourcecode]

As you can see, my data isn't "[tidy](http://vita.had.co.nz/papers/tidy-data.pdf)."
