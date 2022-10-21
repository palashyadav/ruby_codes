# Challenge: Write a function that takes a string and returns the count of vowels (a, e, i, o, u)

def count_vowels(string)
  string.downcase.count('aeiou')
end

# Test cases
puts count_vowels("Hello World")        # Output: 3 (e, o, o)
puts count_vowels("Ruby Programming")   # Output: 4 (u, o, a, i)
puts count_vowels("aeiou")              # Output: 5 (all vowels)
puts count_vowels("xyz")                # Output: 0 (no vowels)
puts count_vowels("")                   # Output: 0 (empty string)
