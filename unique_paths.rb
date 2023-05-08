# Unique Paths: Count ways to reach bottom-right in m x n grid

def unique_paths(m, n)
  dp = Array.new(m) { Array.new(n, 1) }
  
  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
    end
  end
  
  dp[m - 1][n - 1]
end

puts unique_paths(3, 7)
puts unique_paths(3, 2)
puts unique_paths(3, 3)
