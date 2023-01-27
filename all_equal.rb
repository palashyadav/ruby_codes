# Check if all elements equal

def all_equal(arr)
  arr.uniq.length <= 1
end

puts all_equal([5, 5, 5])          # true
puts all_equal([1, 2, 3])          # false
puts all_equal([])                 # true
puts all_equal([7])                # true
