# Minimum Path Sum: Calculate minimum cost path from top-left to bottom-right

def min_path_sum(grid)
  return 0 if grid.empty?
  
  rows, cols = grid.length, grid[0].length
  dp = Array.new(rows) { Array.new(cols) }
  
  dp[0][0] = grid[0][0]
  
  (1...cols).each { |j| dp[0][j] = dp[0][j - 1] + grid[0][j] }
  (1...rows).each { |i| dp[i][0] = dp[i - 1][0] + grid[i][0] }
  
  (1...rows).each do |i|
    (1...cols).each do |j|
      dp[i][j] = grid[i][j] + [dp[i - 1][j], dp[i][j - 1]].min
    end
  end
  
  dp[rows - 1][cols - 1]
end

grid1 = [[1,3,1],[1,5,1],[4,2,1]]
grid2 = [[1,2,3],[4,5,6]]
puts min_path_sum(grid1)
puts min_path_sum(grid2)
