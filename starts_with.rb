# Check if string starts with substring

def starts_with(str, prefix)
  str.start_with?(prefix)
end

puts starts_with("hello world", "hello")    # true
puts starts_with("ruby", "py")              # false
puts starts_with("test", "test")            # true
