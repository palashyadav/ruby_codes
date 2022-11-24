# Count number of words in string

def word_count(str)
  str.split.length
end

puts word_count("hello world")          # 2
puts word_count("ruby programming language")  # 3
puts word_count("a")                   # 1
puts word_count("")                    # 0
