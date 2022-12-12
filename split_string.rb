# Split string by delimiter

def split_string(str, delimiter)
  str.split(delimiter)
end

puts split_string("a,b,c", ",").inspect       # ["a", "b", "c"]
puts split_string("hello world", " ").inspect # ["hello", "world"]
puts split_string("1-2-3", "-").inspect       # ["1", "2", "3"]
