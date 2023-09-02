# Unique Paths II: Unique paths with obstacles (DP)
def unique_paths_with_obstacles(grid)
  return 0 if grid.empty? || grid[0].empty?
  m, n = grid.size, grid[0].size
  dp = Array.new(n, 0)
  dp[0] = (grid[0][0] == 0 ? 1 : 0)
  (0...m).each do |i|
    (0...n).each do |j|
      if grid[i][j] == 1
        dp[j] = 0
      elsif j > 0
        dp[j] += dp[j - 1]
      end
    end
  end
  dp[-1]
end

puts unique_paths_with_obstacles([[0,0,0],[0,1,0],[0,0,0]])
puts unique_paths_with_obstacles([[0,1],[0,0]])
