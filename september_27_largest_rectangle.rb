# September 27: Largest Rectangle in Histogram (Ruby randomized)
def largest_rectangle_area(heights)
  stack = []
  max_area = 0
  heights << 0
  heights.each_with_index do |h, i|
    while !stack.empty? && heights[stack[-1]] > h
      height = heights[stack.pop]
      width = stack.empty? ? i : i - stack[-1] - 1
      max_area = [max_area, height * width].max
    end
    stack << i
  end
  max_area
end

# Test
puts largest_rectangle_area([2,1,5,6,2,3]) # 10
puts largest_rectangle_area([2,4]) # 4
