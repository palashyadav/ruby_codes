# Number of Islands: Count connected components using DFS

def num_islands(grid)
  return 0 if grid.empty?
  
  count = 0
  grid.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      if cell == '1'
        count += 1
        dfs(grid, i, j)
      end
    end
  end
  count
end

def dfs(grid, i, j)
  return if i < 0 || j < 0 || i >= grid.length || j >= grid[0].length || grid[i][j] != '1'
  grid[i][j] = '0'
  dfs(grid, i+1, j)
  dfs(grid, i-1, j)
  dfs(grid, i, j+1)
  dfs(grid, i, j-1)
end

grid1 = [['1','1','1','1','0'],['1','1','0','1','0'],['1','1','0','0','0'],['0','0','0','0','0']]
grid2 = [['1','1','0','0','0'],['1','1','0','0','0'],['0','0','1','0','0'],['0','0','0','1','1']]
puts num_islands(grid1)
puts num_islands(grid2)
