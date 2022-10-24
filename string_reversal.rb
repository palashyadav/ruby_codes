# Challenge: Write a function that returns the reverse of a string without using built-in reverse method

def reverse_string(str)
  result = ""
  str.each_char { |char| result = char + result }
  result
end

# Test cases
puts reverse_string("Hello")          # Output: olleH
puts reverse_string("Ruby")           # Output: ybuR
puts reverse_string("12345")          # Output: 54321
puts reverse_string("")               # Output: ""
