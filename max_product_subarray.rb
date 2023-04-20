# Maximum Product Subarray: Find subarray with maximum product

def max_product(nums)
  return 0 if nums.empty?
  
  max_prod = nums[0]
  min_prod = nums[0]
  result = nums[0]
  
  (1...nums.length).each do |i|
    num = nums[i]
    
    temp_max = [num, max_prod * num, min_prod * num].max
    min_prod = [num, max_prod * num, min_prod * num].min
    max_prod = temp_max
    
    result = max_prod if max_prod > result
  end
  
  result
end

puts max_product([2,3,-2,4])
puts max_product([-2])
puts max_product([0,2])
puts max_product([-2,3,-4])
