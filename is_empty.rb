# Check if string is empty

def is_empty(str)
  str.empty?
end

puts is_empty("")           # true
puts is_empty("hello")      # false
puts is_empty(" ")          # false
