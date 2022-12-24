# Check if any element is even

def any_even(arr)
  arr.any? { |num| num.even? }
end

puts any_even([1, 3, 5, 7])       # false
puts any_even([1, 2, 3])          # true
puts any_even([10, 20])           # true
