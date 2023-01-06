# Find product of array elements

def product_of_array(arr)
  arr.reduce(1, :*)
end

puts product_of_array([2, 3, 4])       # 24
puts product_of_array([5, 5])          # 25
puts product_of_array([1])             # 1
