# use the new domain
blogdown:::process_file('kbroman.xml', function(x) {
  # replace possible invalid dates with a random date
  x = gsub('0000-00-00 00:00:00', '2017-07-28 00:00:00', x)
  x = gsub('https?://kbroman.wordpress.com', 'http://kbroman.org/blog', x)
  # move possible images out of <pre></pre>
  x = gsub('^(\\s*)(<a .*<img .*)(</code></pre>\\s*)$', '\\1\\3\n\\2\n', x)
  x
})
