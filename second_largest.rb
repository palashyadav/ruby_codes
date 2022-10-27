# Challenge: Write a function that finds the second largest number in an array

def second_largest(arr)
  return nil if arr.length < 2
  arr.sort.reverse[1]
end

# Test cases
puts second_largest([1, 2, 3, 4, 5])           # Output: 4
puts second_largest([10, 20, 30, 5])           # Output: 20
puts second_largest([100])                     # Output: nil
puts second_largest([5, 5, 5, 5])              # Output: 5
puts second_largest([42, 15, 28, 99, 7])      # Output: 42
