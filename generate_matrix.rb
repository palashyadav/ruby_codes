# Spiral Matrix II: Generate an n x n matrix filled with elements from 1 to n^2 in spiral order
def generate_matrix(n)
  matrix = Array.new(n) { Array.new(n) }
  left, right, top, bottom = 0, n - 1, 0, n - 1
  num = 1
  while left <= right && top <= bottom
    (left..right).each { |i| matrix[top][i] = num; num += 1 }
    top += 1
    (top..bottom).each { |i| matrix[i][right] = num; num += 1 }
    right -= 1
    if top <= bottom
      right.downto(left) { |i| matrix[bottom][i] = num; num += 1 }
      bottom -= 1
    end
    if left <= right
      bottom.downto(top) { |i| matrix[i][left] = num; num += 1 }
      left += 1
    end
  end
  matrix
end

puts generate_matrix(3).inspect
puts generate_matrix(4).inspect
