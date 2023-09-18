# Kth Smallest Element in a Sorted Matrix: Using min-heap (Ruby simple approach)
require 'priority_queue'

def kth_smallest(matrix, k)
  flat = matrix.flatten
  flat.sort[k - 1]
end

puts kth_smallest([[1,5,9],[10,11,13],[12,13,15]], 8)
