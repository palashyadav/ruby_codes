# House Robber: Maximum money robbing houses without adjacent ones

def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1
  
  prev2 = nums[0]
  prev1 = [nums[0], nums[1]].max
  
  (2...nums.length).each do |i|
    current = [prev1, prev2 + nums[i]].max
    prev2 = prev1
    prev1 = current
  end
  
  prev1
end

puts rob([1, 2, 3, 1])
puts rob([2, 7, 9, 3, 1])
puts rob([5, 3, 4, 11, 2])
