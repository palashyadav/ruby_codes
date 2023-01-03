# Convert array to set (remove duplicates)

def array_to_set(arr)
  arr.uniq
end

puts array_to_set([1, 2, 2, 3, 3, 3]).inspect        # [1, 2, 3]
puts array_to_set([5, 5, 5]).inspect                 # [5]
puts array_to_set([1, 2, 3]).inspect                 # [1, 2, 3]
