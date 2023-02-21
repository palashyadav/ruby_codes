def word_frequency(text)
  words = text.downcase.split(/\W+/).reject(&:empty?)
  freq = Hash.new(0)
  words.each { |word| freq[word] += 1 }
  freq.sort_by { |_, count| -count }
end

text = "the quick brown fox jumps over the lazy dog the"
puts word_frequency(text).first(5)
