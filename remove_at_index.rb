# Remove element at index

def remove_at_index(arr, index)
  arr.reject.with_index { |_, i| i == index }
end

puts remove_at_index([1, 2, 3, 4], 2).inspect      # [1, 2, 4]
puts remove_at_index(["a", "b", "c"], 0).inspect   # ["b", "c"]
puts remove_at_index([5], 0).inspect               # []
