def intersection(arr1, arr2)
  set1 = arr1.to_set
  set2 = arr2.to_set
  (set1 & set2).to_a
end

puts intersection([1, 2, 3, 4], [3, 4, 5, 6]).inspect
puts intersection([1, 1, 2], [1, 2, 2]).inspect
puts intersection([], [1, 2]).inspect
