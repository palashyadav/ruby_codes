# Word Ladder: Shortest path from start to end word with one letter change at a time

def ladder_length(begin_word, end_word, word_list)
  word_set = Set.new(word_list)
  return 0 unless word_set.include?(end_word)
  
  queue = [[begin_word, 1]]
  visited = Set.new([begin_word])
  
  while !queue.empty?
    word, length = queue.shift
    
    return length + 1 if word == end_word
    
    (0...word.length).each do |i|
      ('a'..'z').each do |c|
        next if c == word[i]
        next_word = word[0...i] + c + word[i+1..-1]
        
        if word_set.include?(next_word) && !visited.include?(next_word)
          visited.add(next_word)
          queue.push([next_word, length + 1])
        end
      end
    end
  end
  
  0
end

word_list = ["hot", "dot", "dog", "lot", "log", "cog"]
puts ladder_length("hit", "cog", word_list)
