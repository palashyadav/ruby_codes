# Flatten nested array

def flatten_array(arr)
  arr.flatten
end

puts flatten_array([1, [2, 3], [4, [5, 6]]]).inspect        # [1, 2, 3, 4, 5, 6]
puts flatten_array([1, 2, 3]).inspect                       # [1, 2, 3]
puts flatten_array([]).inspect                              # []
