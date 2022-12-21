# Sort array in descending order

def sort_descending(arr)
  arr.sort.reverse
end

puts sort_descending([3, 1, 4, 1, 5]).inspect      # [5, 4, 3, 1, 1]
puts sort_descending([10, 5, 20]).inspect          # [20, 10, 5]
puts sort_descending([1]).inspect                  # [1]
