# Concatenated Words: Find words formed by concatenating other words

def find_all_concatenated_words_in_a_dict(words)
  word_set = Set.new(words)
  
  def is_concat(word, word_set, memo = {})
    return memo[word] if memo.key?(word)
    
    (1...word.length).each do |i|
      left = word[0...i]
      right = word[i..-1]
      
      if word_set.include?(left)
        if word_set.include?(right) || is_concat(right, word_set, memo)
          return memo[word] = true
        end
      end
    end
    
    memo[word] = false
  end
  
  result = []
  words.each do |word|
    remaining = word_set.dup
    remaining.delete(word)
    result << word if is_concat(word, remaining)
  end
  
  result
end

words = ["cat","cats","catsdogcats","dog","catsdog"]
p find_all_concatenated_words_in_a_dict(words)
