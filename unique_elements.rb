# Find unique elements between two arrays

def unique_elements(arr1, arr2)
  (arr1 + arr2).uniq
end

puts unique_elements([1, 2, 3], [2, 3, 4]).inspect        # [1, 2, 3, 4]
puts unique_elements([5, 10], [10, 20]).inspect           # [5, 10, 20]
puts unique_elements([1], [1]).inspect                    # [1]
