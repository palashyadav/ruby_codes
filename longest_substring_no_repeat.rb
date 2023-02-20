def longest_substring_without_repeat(s)
  char_index = {}
  max_length = 0
  start = 0
  
  s.each_char.with_index do |char, i|
    if char_index[char] && char_index[char] >= start
      start = char_index[char] + 1
    end
    char_index[char] = i
    max_length = [max_length, i - start + 1].max
  end
  
  max_length
end

puts longest_substring_without_repeat("abcabcbb")
puts longest_substring_without_repeat("bbbbb")
puts longest_substring_without_repeat("pwwkew")
