# Count occurrences of substring

def count_occurrences(str, substr)
  str.scan(substr).length
end

puts count_occurrences("hello hello world", "hello")    # 2
puts count_occurrences("banana", "an")                  # 2
puts count_occurrences("test", "x")                     # 0
