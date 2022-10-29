# Challenge: Write a function that removes duplicate elements from an array while maintaining order

def remove_duplicates(arr)
  seen = Set.new
  arr.select { |element| seen.add?(element) }
end

# Test cases
puts remove_duplicates([1, 2, 2, 3, 4, 4, 4, 5]).inspect       # Output: [1, 2, 3, 4, 5]
puts remove_duplicates([5, 5, 5, 5]).inspect                   # Output: [5]
puts remove_duplicates([1, 2, 3]).inspect                      # Output: [1, 2, 3]
puts remove_duplicates(["a", "b", "a", "c"]).inspect           # Output: ["a", "b", "c"]
puts remove_duplicates([]).inspect                             # Output: []
