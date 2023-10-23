# October 23: House Robber (Ruby randomized)
def rob(nums)
  prev1 = prev2 = 0
  nums.each do |num|
    temp = prev1
    prev1 = [prev2 + num, prev1].max
    prev2 = temp
  end
  prev1
end

# Test
puts rob([1,2,3,1]) # 4
puts rob([2,7,9,3,1]) # 12
