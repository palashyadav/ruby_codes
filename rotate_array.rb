# Rotate array by n positions

def rotate_array(arr, n)
  return [] if arr.empty?
  n = n % arr.length
  arr.drop(n) + arr.take(n)
end

puts rotate_array([1, 2, 3, 4, 5], 2).inspect    # [3, 4, 5, 1, 2]
puts rotate_array([1, 2, 3], 1).inspect          # [2, 3, 1]
puts rotate_array([1], 5).inspect                # [1]
puts rotate_array([], 3).inspect                 # []
