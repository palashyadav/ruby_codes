# Set Matrix Zeroes: Modify matrix in-place to set entire row and column to zero if an element is zero
def set_zeroes(matrix)
  rows, cols = matrix.size, matrix[0].size
  row_zero = false
  col_zero = false
  (0...rows).each { |i| row_zero ||= matrix[i][0] == 0 }
  (0...cols).each { |j| col_zero ||= matrix[0][j] == 0 }
  (1...rows).each do |i|
    (1...cols).each do |j|
      if matrix[i][j] == 0
        matrix[i][0] = 0
        matrix[0][j] = 0
      end
    end
  end
  (1...rows).each do |i|
    (1...cols).each do |j|
      if matrix[i][0] == 0 || matrix[0][j] == 0
        matrix[i][j] = 0
      end
    end
  end
  matrix[0] = [0]*cols if col_zero
  (0...rows).each { |i| matrix[i][0] = 0 } if row_zero
  matrix
end

m = [[1,1,1],[1,0,1],[1,1,1]]
set_zeroes(m)
puts m.inspect
