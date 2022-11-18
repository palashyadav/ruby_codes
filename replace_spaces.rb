# Replace spaces with underscores

def replace_spaces(str)
  str.gsub(' ', '_')
end

puts replace_spaces("hello world")           # hello_world
puts replace_spaces("ruby programming")      # ruby_programming
puts replace_spaces("no spaces here")        # no_spaces_here
