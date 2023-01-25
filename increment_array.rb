# Increment each element in array

def increment_array(arr)
  arr.map { |num| num + 1 }
end

puts increment_array([1, 2, 3, 4]).inspect       # [2, 3, 4, 5]
puts increment_array([10, 20]).inspect           # [11, 21]
puts increment_array([]).inspect                 # []
