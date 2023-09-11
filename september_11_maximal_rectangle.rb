# Maximal Rectangle: Largest rectangle of 1s in binary matrix (histogram DP)

def maximal_rectangle(matrix)
  return 0 if matrix.empty?
  m, n = matrix.size, matrix[0].size
  heights = Array.new(n, 0)
  max_area = 0
  (0...m).each do |i|
    (0...n).each do |j|
      heights[j] = matrix[i][j] == '1' ? heights[j] + 1 : 0
    end
    max_area = [max_area, largest_rectangle_area(heights)].max
  end
  max_area
end

def largest_rectangle_area(heights)
  stack = []
  max_area = 0
  heights.each_with_index do |h, i|
    start = i
    while !stack.empty? && stack[-1][1] > h
      index, height = stack.pop
      max_area = [max_area, height * (i - index)].max
      start = index
    end
    stack << [start, h]
  end
  i = heights.size
  stack.each do |index, height|
    max_area = [max_area, height * (i - index)].max
  end
  max_area
end

puts maximal_rectangle([['1','0','1','0','0'],['1','0','1','1','1'],['1','1','1','1','1'],['1','0','0','1','0']])
