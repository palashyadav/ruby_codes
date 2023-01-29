# Find second smallest element

def second_smallest(arr)
  return nil if arr.length < 2
  arr.sort[1]
end

puts second_smallest([1, 2, 3, 4, 5])          # 2
puts second_smallest([5, 3, 1, 9])             # 3
puts second_smallest([10])                     # nil
