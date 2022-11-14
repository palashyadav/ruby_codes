# Capitalize each word in string

def capitalize_words(str)
  str.split.map(&:capitalize).join(' ')
end

puts capitalize_words("hello world")        # Hello World
puts capitalize_words("ruby programming")   # Ruby Programming
puts capitalize_words("a b c")              # A B C
