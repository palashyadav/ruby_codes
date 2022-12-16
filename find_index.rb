# Find index of element in array

def find_index(arr, element)
  arr.index(element)
end

puts find_index([1, 2, 3, 4, 5], 3)     # 2
puts find_index(["a", "b", "c"], "b")   # 1
puts find_index([10, 20, 30], 50)       # nil
