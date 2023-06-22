# Trapping Rain Water: Calculate trapped rainwater after elevation map
def trap(height)
  return 0 if height.empty?
  left, right = 0, height.size - 1
  left_max, right_max = 0, 0
  water = 0
  while left < right
    if height[left] < height[right]
      left_max = [left_max, height[left]].max
      water += left_max - height[left]
      left += 1
    else
      right_max = [right_max, height[right]].max
      water += right_max - height[right]
      right -= 1
    end
  end
  water
end

puts trap([0,1,0,2,1,0,1,3,2,1,2,1])
puts trap([4,2,0,3,2,5])
