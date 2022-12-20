# Sort array in ascending order

def sort_ascending(arr)
  arr.sort
end

puts sort_ascending([3, 1, 4, 1, 5]).inspect      # [1, 1, 3, 4, 5]
puts sort_ascending([10, 5, 20]).inspect          # [5, 10, 20]
puts sort_ascending([1]).inspect                  # [1]
