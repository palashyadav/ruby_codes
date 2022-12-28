# Double all elements in array

def double_elements(arr)
  arr.map { |num| num * 2 }
end

puts double_elements([1, 2, 3, 4]).inspect       # [2, 4, 6, 8]
puts double_elements([5, 10]).inspect            # [10, 20]
puts double_elements([]).inspect                 # []
