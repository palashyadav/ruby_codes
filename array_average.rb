# Find average of array elements

def array_average(arr)
  return 0 if arr.empty?
  arr.sum / arr.length.to_f
end

puts array_average([1, 2, 3, 4, 5])          # 3.0
puts array_average([10, 20, 30])             # 20.0
puts array_average([5])                      # 5.0
puts array_average([])                       # 0
