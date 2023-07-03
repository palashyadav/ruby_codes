# Longest Increasing Subsequence: Find length of longest increasing subsequence
def length_of_lis(nums)
  return 0 if nums.empty?
  dp = Array.new(nums.size, 1)
  (1...nums.size).each do |i|
    (0...i).each do |j|
      if nums[j] < nums[i]
        dp[i] = [dp[i], dp[j] + 1].max
      end
    end
  end
  dp.max
end

puts length_of_lis([10,9,2,5,3,7,101,18])
puts length_of_lis([0,1,0,4,4,4,4,2,0,4,2])
puts length_of_lis([])
