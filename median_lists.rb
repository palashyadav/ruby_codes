# Median of Two Sorted Lists: Find median using BFS on sorted lists
def find_median_of_lists(arr1, arr2)
  merged = []
  i, j = 0, 0
  while i < arr1.size && j < arr2.size
    if arr1[i] <= arr2[j]
      merged << arr1[i]
      i += 1
    else
      merged << arr2[j]
      j += 1
    end
  end
  merged.concat(arr1[i..-1] || [])
  merged.concat(arr2[j..-1] || [])
  n = merged.size
  n.even? ? (merged[n / 2 - 1] + merged[n / 2]) / 2.0 : merged[n / 2]
end

puts find_median_of_lists([1,3], [2,7])
puts find_median_of_lists([1,2], [3,4])
