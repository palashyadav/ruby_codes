# Burst Balloons: Maximum coins by bursting balloons with optimal strategy

def max_coins(nums)
  nums = [1] + nums.select { |x| x > 0 } + [1]
  n = nums.length
  dp = Array.new(n) { Array.new(n, 0) }
  
  (2...n).each do |length|
    (0...n - length).each do |left|
      right = left + length
      (left + 1...right).each do |k|
        coins = nums[left] * nums[k] * nums[right]
        dp[left][right] = [dp[left][right], dp[left][k] + dp[k][right] + coins].max
      end
    end
  end
  
  dp[0][n - 1]
end

puts max_coins([3, 1, 5, 8])
puts max_coins([1, 5])
