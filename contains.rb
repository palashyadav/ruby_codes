# Check if string contains substring

def contains(str, substr)
  str.include?(substr)
end

puts contains("hello world", "world")    # true
puts contains("ruby", "py")              # true
puts contains("test", "xyz")             # false
