# Check if string contains only alphabets

def only_alphabets(str)
  str.match?(/^[a-zA-Z]+$/)
end

puts only_alphabets("hello")       # true
puts only_alphabets("Hello123")    # false
puts only_alphabets("test")        # true
puts only_alphabets("")            # false
