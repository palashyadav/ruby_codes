def group_anagrams(words)
  words.group_by { |word| word.chars.sort.join }.values
end

result = group_anagrams(["eat", "tea", "ate", "tan", "ant", "nat"])
result.each { |group| puts group.inspect }
