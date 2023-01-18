# Find common elements in two arrays

def common_elements(arr1, arr2)
  arr1 & arr2
end

puts common_elements([1, 2, 3], [2, 3, 4]).inspect        # [2, 3]
puts common_elements([5, 10, 15], [10, 20]).inspect       # [10]
puts common_elements([1, 2], [3, 4]).inspect              # []
