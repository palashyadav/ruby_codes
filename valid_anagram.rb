# Valid Anagram: Check if two strings are anagrams

def is_anagram(s, t)
  return false if s.length != t.length
  s.chars.sort == t.chars.sort
end

puts is_anagram("anagram", "nagaram")
puts is_anagram("rat", "car")
puts is_anagram("a", "a")
puts is_anagram("", "")
