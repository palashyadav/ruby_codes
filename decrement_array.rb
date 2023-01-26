# Decrement each element in array

def decrement_array(arr)
  arr.map { |num| num - 1 }
end

puts decrement_array([1, 2, 3, 4]).inspect       # [0, 1, 2, 3]
puts decrement_array([10, 20]).inspect           # [9, 19]
puts decrement_array([5]).inspect                # [4]
