# Maximal Square: Largest square of 1s in matrix

def maximal_square(matrix)
  return 0 if matrix.empty?
  
  rows, cols = matrix.length, matrix[0].length
  dp = Array.new(rows) { Array.new(cols, 0) }
  max_side = 0
  
  rows.times do |i|
    cols.times do |j|
      if matrix[i][j] == '1'
        if i == 0 || j == 0
          dp[i][j] = 1
        else
          dp[i][j] = [dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]].min + 1
        end
        max_side = dp[i][j] if dp[i][j] > max_side
      end
    end
  end
  
  max_side * max_side
end

matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
puts maximal_square(matrix)
