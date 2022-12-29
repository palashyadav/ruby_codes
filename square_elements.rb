# Square all elements in array

def square_elements(arr)
  arr.map { |num| num ** 2 }
end

puts square_elements([1, 2, 3, 4]).inspect       # [1, 4, 9, 16]
puts square_elements([5, 10]).inspect            # [25, 100]
puts square_elements([0, 1]).inspect             # [0, 1]
