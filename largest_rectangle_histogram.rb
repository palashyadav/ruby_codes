# Largest Rectangle in Histogram: Stack-based O(n) solution

def largest_rectangle_area(heights)
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
      area = h * w
      max_area = area if area > max_area
    end
  end
  
  while !stack.empty?
    h_idx = stack.pop
    h = heights[h_idx]
    w = stack.empty? ? index : index - stack[-1] - 1
    area = h * w
    max_area = area if area > max_area
  end
  
  max_area
end

puts largest_rectangle_area([2,1,5,6,2,3])
puts largest_rectangle_area([2,4])
