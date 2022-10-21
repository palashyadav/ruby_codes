# Challenge: Write a function that takes an array of integers and returns the sum of all even numbers

def sum_of_evens(numbers)
  numbers.select { |num| num.even? }.sum
end

puts sum_of_evens([1, 2, 3, 4, 5, 6])  # Output: 12 (2 + 4 + 6)
puts sum_of_evens([10, 15, 20, 25])    # Output: 30 (10 + 20)
puts sum_of_evens([1, 3, 5, 7])        # Output: 0 (no even numbers)
puts sum_of_evens([])                  # Output: 0 (empty array)
