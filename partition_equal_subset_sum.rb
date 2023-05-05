# Partition Equal Subset Sum: Check if array can be split into equal sum subsets

def can_partition(nums)
  total = nums.sum
  return false if total.odd?
  
  target = total / 2
  dp = Array.new(target + 1, false)
  dp[0] = true
  
  nums.each do |num|
    (target).downto(num).each do |i|
      dp[i] = dp[i] || dp[i - num]
    end
  end
  
  dp[target]
end

puts can_partition([1, 5, 11, 5])
puts can_partition([2, 2, 1, 1])
puts can_partition([1, 2, 3, 5])
