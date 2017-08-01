---
author: kbroman
comments: true
date: 2013-03-03 04:09:37+00:00
layout: post
link: http://kbroman.org/blog/2013/03/02/charsetutf-8/
slug: charsetutf-8
title: charset="utf-8"
wordpress_id: 1364
categories:
- Programming
tags:
- D3
- javascript
- programming
---

To use the latest version of [D3](http://d3js.org), you need to use `charset="utf-8"` in the call to `<script>`.

I'm giving a talk at [ENAR](http://www.enar.org/meetings.cfm) in just over a week, on interactive graphics.  My slides (still in preparation) are [on the web](http://www.biostat.wisc.edu/~kbroman/presentations/InteractiveGraphs2).

The slides were working fine locally on my laptop, but they weren't working on my web server...I was getting a syntax error regarding an illegal character.

I figured out that I needed to add `charset="utf-8"`, like so:

[sourcecode language="html"]
<script charset="utf-8" type="text/javascript" src="js/d3.js">
</script>
[/sourcecode]
