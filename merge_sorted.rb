# Merge two sorted arrays

def merge_sorted(arr1, arr2)
  (arr1 + arr2).sort
end

puts merge_sorted([1, 3, 5], [2, 4, 6]).inspect      # [1, 2, 3, 4, 5, 6]
puts merge_sorted([1, 2], [3, 4]).inspect            # [1, 2, 3, 4]
puts merge_sorted([], [1, 2]).inspect                # [1, 2]
puts merge_sorted([5], [1]).inspect                  # [1, 5]
