# Container With Most Water: Find two lines that together with x-axis form container with max area
def max_area(height)
  left, right = 0, height.size - 1
  max_area = 0
  while left < right
    area = [height[left], height[right]].min * (right - left)
    max_area = [max_area, area].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_area
end

puts max_area([1,8,6,2,5,4,8,3,7])
puts max_area([1,1])
