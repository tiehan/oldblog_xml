---
author: kbroman
comments: true
date: 2013-03-06 17:38:04+00:00
layout: post
link: http://kbroman.org/blog/2013/03/06/interactive-eqtl-plot-with-d3-js/
slug: interactive-eqtl-plot-with-d3-js
title: Interactive eQTL plot with d3.js
wordpress_id: 1378
categories:
- Genetics
- Programming
- Statistics
tags:
- D3
- graphics
---

I just finished an [interactive eQTL plot](http://www.biostat.wisc.edu/~kbroman/D3/cistrans) using [D3](http://d3js.org), in preparation for my [talk on interactive graphics](http://www.biostat.wisc.edu/~kbroman/talks/InteractiveGraphs2) at the [ENAR meeting](http://www.enar.org/meetings.cfm) next week.

[![Static view of interactive eQTL plot](http://kbroman.files.wordpress.com/2013/03/interactive_eqtl_plot.png?w=500)](http://www.biostat.wisc.edu/~kbroman/D3/cistrans)

The code (in [CoffeeScript](http://coffeescript.org)) is available at [github](https://github.com/kbroman/JSbroman/tree/master/cistrans).  But beware: it's pretty awful.

The hardest part was setting up the data files.  Well, that plus the fact that I just barely know what I'm doing in D3.
