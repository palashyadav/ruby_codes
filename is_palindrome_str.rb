# Check if string is palindrome

def is_palindrome_str(str)
  clean = str.downcase.gsub(/[^a-z0-9]/, '')
  clean == clean.reverse
end

puts is_palindrome_str("racecar")             # true
puts is_palindrome_str("hello")               # false
puts is_palindrome_str("A man, a plan, a canal: Panama")  # true
puts is_palindrome_str("12321")               # true
