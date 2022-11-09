# Check if string contains only digits

def only_digits?(str)
  str.match?(/^\d+$/)
end

puts only_digits?("12345")       # true
puts only_digits?("123abc")      # false
puts only_digits?("")            # false
puts only_digits?("0")           # true
