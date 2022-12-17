# Find minimum element in array

def min_element(arr)
  return nil if arr.empty?
  arr.min
end

puts min_element([3, 1, 4, 1, 5])         # 1
puts min_element([10, 20, 15])            # 10
puts min_element([-5, -1, -10])           # -10
