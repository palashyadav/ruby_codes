# Find largest element in array

def max_element(arr)
  return nil if arr.empty?
  arr.max
end

puts max_element([3, 1, 4, 1, 5])         # 5
puts max_element([10, 20, 15])            # 20
puts max_element([-5, -1, -10])           # -1
puts max_element([42])                    # 42
