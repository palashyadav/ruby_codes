# Check if all elements are positive

def all_positive(arr)
  arr.all? { |num| num > 0 }
end

puts all_positive([1, 2, 3, 4])       # true
puts all_positive([1, -2, 3])         # false
puts all_positive([0])                # false
