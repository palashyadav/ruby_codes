# October 19: Unique Binary Search Trees (Ruby randomized)
def num_trees(n)
  dp = Array.new(n+1, 0)
  dp[0] = dp[1] = 1
  (2..n).each do |i|
    (1..i).each do |j|
      dp[i] += dp[j-1] * dp[i-j]
    end
  end
  dp[n]
end

# Test
puts num_trees(3) # 5
puts num_trees(1) # 1
