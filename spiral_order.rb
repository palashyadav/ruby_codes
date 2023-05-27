# Spiral Matrix: Return all elements of a matrix in spiral order
def spiral_order(matrix)
  return [] if matrix.empty?
  res = []
  top, bottom = 0, matrix.size - 1
  left, right = 0, matrix[0].size - 1
  while top <= bottom && left <= right
    (left..right).each { |i| res << matrix[top][i] }
    top += 1
    (top..bottom).each { |i| res << matrix[i][right] }
    right -= 1
    if top <= bottom
      right.downto(left) { |i| res << matrix[bottom][i] }
      bottom -= 1
    end
    if left <= right
      bottom.downto(top) { |i| res << matrix[i][left] }
      left += 1
    end
  end
  res
end

puts spiral_order([[1,2,3],[4,5,6],[7,8,9]]).inspect
puts spiral_order([[1,2,3,4],[5,6,7,8],[9,10,11,12]]).inspect
