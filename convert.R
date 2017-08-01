# use the new domain
blogdown:::process_file(xml_file <- 'kbroman.xml', function(x) {
  # replace possible invalid dates with a random date
  x = gsub('0000-00-00 00:00:00', '2017-07-28 00:00:00', x)
  x = gsub('https?://kbroman.wordpress.com', 'http://kbroman.org/blog', x)
  # move possible images out of <pre></pre>
  x = gsub('^(\\s*)(<a .*<img .*)(</code></pre>\\s*)$', '\\1\\3\n\\2\n', x)
  x
})

# check if there are any XML problems (should be rare)
system('xmllint --noout *.xml')

unlink(c('post', 'exitwp/build', 'exitwp/wordpress-xml/*.xml'), recursive = TRUE)
file.copy(xml_file, 'exitwp/wordpress-xml/')

# I'm using the Homebrew version of Python, and I need its bin path to go before /usr/bin
if (blogdown:::is_osx()) {
  Sys.setenv(PATH = paste('/usr/local/opt/python/libexec/bin', Sys.getenv('PATH'), sep = ':'))
}

# you may need to install a few packages first:
# system('pip install --upgrade -r exitwp/pip_requirements.txt')
system('cd exitwp; python exitwp.py && mv build/jekyll/*/_posts ../post')

