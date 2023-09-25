# September 25: Word Ladder (Ruby randomized)
require 'set'
def ladder_length(begin_word, end_word, word_list)
  word_set = word_list.to_set
  return 0 unless word_set.include?(end_word)
  queue = [[begin_word, 1]]
  while !queue.empty?
    word, length = queue.shift
    return length if word == end_word
    word.chars.each_with_index do |c, i|
      ('a'..'z').each do |ch|
        next if ch == c
        new_word = word.dup
        new_word[i] = ch
        if word_set.include?(new_word)
          queue << [new_word, length + 1]
          word_set.delete(new_word)
        end
      end
    end
  end
  0
end

# Test
puts ladder_length('hit', 'cog', %w[hot dot dog lot log cog]) # 5
puts ladder_length('hit', 'cog', %w[hot dot dog lot log]) # 0
