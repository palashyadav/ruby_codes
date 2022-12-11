# Remove leading and trailing whitespace

def trim(str)
  str.strip
end

puts trim("  hello  ").inspect       # "hello"
puts trim("\n  test  \n").inspect     # "test"
puts trim("ruby").inspect            # "ruby"
