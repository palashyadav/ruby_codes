# Valid Palindrome: Check if string is palindrome ignoring non-alphanumeric

def is_valid_palindrome(s)
  cleaned = s.downcase.gsub(/[^a-z0-9]/, '')
  cleaned == cleaned.reverse
end

puts is_valid_palindrome("A man, a plan, a canal: Panama")
puts is_valid_palindrome("race a car")
puts is_valid_palindrome(" ")
puts is_valid_palindrome("0P")
