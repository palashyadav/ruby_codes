# Check if string ends with substring

def ends_with(str, suffix)
  str.end_with?(suffix)
end

puts ends_with("hello world", "world")    # true
puts ends_with("ruby", "py")              # true
puts ends_with("test", "ing")             # false
