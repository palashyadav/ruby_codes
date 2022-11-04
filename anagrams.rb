# Challenge: Write a function that checks if two strings are anagrams of each other

def are_anagrams(str1, str2)
  str1.downcase.delete(" ").chars.sort == str2.downcase.delete(" ").chars.sort
end

# Test cases
puts are_anagrams("listen", "silent")           # Output: true
puts are_anagrams("hello", "world")             # Output: false
puts are_anagrams("The Eyes", "They See")       # Output: true
puts are_anagrams("abc", "def")                 # Output: false
puts are_anagrams("a", "a")                     # Output: true
