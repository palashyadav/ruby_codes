# Extract digits from string

def extract_digits(str)
  str.scan(/\d+/).join.to_i
end

puts extract_digits("abc123def456")       # 123456
puts extract_digits("hello123")           # 123
puts extract_digits("no digits")          # 0
