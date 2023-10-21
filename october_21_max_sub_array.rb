# October 21: Maximum Subarray (Ruby randomized)
def max_sub_array(nums)
  max_sum = nums[0]
  curr_sum = nums[0]
  (1...nums.length).each do |i|
    curr_sum = [nums[i], curr_sum + nums[i]].max
    max_sum = [max_sum, curr_sum].max
  end
  max_sum
end

# Test
puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4]) # 6
puts max_sub_array([1]) # 1
