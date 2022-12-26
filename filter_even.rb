# Filter even numbers from array

def filter_even(arr)
  arr.select { |num| num.even? }
end

puts filter_even([1, 2, 3, 4, 5, 6]).inspect     # [2, 4, 6]
puts filter_even([1, 3, 5]).inspect              # []
puts filter_even([2, 4, 6, 8]).inspect           # [2, 4, 6, 8]
