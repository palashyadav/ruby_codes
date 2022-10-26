# Challenge: Write a function that checks if a number is a palindrome

def is_palindrome_number(num)
  str = num.abs.to_s
  str == str.reverse
end

# Test cases
puts is_palindrome_number(121)         # Output: true
puts is_palindrome_number(12321)       # Output: true
puts is_palindrome_number(123)         # Output: false
puts is_palindrome_number(0)           # Output: true
puts is_palindrome_number(-121)        # Output: true (ignores sign)
