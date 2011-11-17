# Watchr is a continuous testing tool. It triggers an event each time
# a 'watched' file is modified.

# To start the watchr daemon, `watchr spec.watch`

# This file specifies the events to be triggered to set up the lilp
# environment for literate programming.

# Watch for files in the literate_src directory. Each time
# a file there is modified, the lilp pre-processor is called
# with the src/ directory as output
watch( 'literate_src/(.*)' ) do |md|
  system "lilp #{md[0]} -o src"
end
