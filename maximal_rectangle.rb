# Maximum Rectangle: Largest rectangle area in binary matrix using DP

def maximal_rectangle(matrix)
  return 0 if matrix.empty?
  
  rows, cols = matrix.length, matrix[0].length
  heights = Array.new(cols, 0)
  max_area = 0
  
  rows.times do |i|
    cols.times do |j|
      heights[j] = matrix[i][j] == '1' ? heights[j] + 1 : 0
    end
    max_area = [max_area, largest_rectangle_in_histogram(heights)].max
  end
  
  max_area
end

def largest_rectangle_in_histogram(heights)
  stack = []
  max_area = 0
  index = 0
  
  while index < heights.length
    if stack.empty? || heights[index] >= heights[stack[-1]]
      stack.push(index)
      index += 1
    else
      h_idx = stack.pop
      h = heights[h_idx]
      w = stack.empty? ? index : index - stack[-1] - 1
      max_area = [max_area, h * w].max
    end
  end
  
  while !stack.empty?
    h_idx = stack.pop
    h = heights[h_idx]
    w = stack.empty? ? index : index - stack[-1] - 1
    max_area = [max_area, h * w].max
  end
  
  max_area
end

matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
puts maximal_rectangle(matrix)
