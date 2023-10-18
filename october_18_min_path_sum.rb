# October 18: Minimum Path Sum (Ruby randomized)
def min_path_sum(grid)
  m, n = grid.size, grid[0].size
  dp = Array.new(m) { Array.new(n, 0) }
  dp[0][0] = grid[0][0]
  (1...m).each { |i| dp[i][0] = dp[i-1][0] + grid[i][0] }
  (1...n).each { |j| dp[0][j] = dp[0][j-1] + grid[0][j] }
  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = [dp[i-1][j], dp[i][j-1]].min + grid[i][j]
    end
  end
  dp[m-1][n-1]
end

# Test
puts min_path_sum([[1,3,1],[1,5,1],[4,2,1]]) # 7
puts min_path_sum([[1,2,3],[4,5,6]]) # 12
