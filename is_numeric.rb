# Check if string is numeric

def is_numeric(str)
  str.match?(/^\d+$/)
end

puts is_numeric("12345")       # true
puts is_numeric("123abc")      # false
puts is_numeric("0")           # true
puts is_numeric("")            # false
