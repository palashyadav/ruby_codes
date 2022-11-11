# Count character frequency in string

def char_frequency(str)
  freq = {}
  str.each_char { |char| freq[char] = (freq[char] || 0) + 1 }
  freq
end

puts char_frequency("hello").inspect       # {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
puts char_frequency("aabbcc").inspect      # {"a"=>2, "b"=>2, "c"=>2}
puts char_frequency("a").inspect           # {"a"=>1}
