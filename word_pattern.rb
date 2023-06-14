# Word Pattern: Check if word sequence follows pattern (bijection mapping)
def word_pattern(pattern, s)
  words = s.split
  return false if pattern.size != words.size
  map_char = {}
  map_word = {}
  pattern.each_char.with_index do |c, i|
    if map_char.key?(c)
      return false if map_char[c] != words[i]
    else
      map_char[c] = words[i]
    end
    if map_word.key?(words[i])
      return false if map_word[words[i]] != c
    else
      map_word[words[i]] = c
    end
  end
  true
end

puts word_pattern("abba", "dog cat cat dog")
puts word_pattern("abba", "dog cat cat fish")
puts word_pattern("aaaa", "dog dog dog dog")
puts word_pattern("abab", "dog cat dog cat")
