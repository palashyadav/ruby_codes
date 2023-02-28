# Trapping Rain Water: Given elevation map, calculate water trapped after raining

def trap(height)
  return 0 if height.length < 3
  
  left_max = Array.new(height.length, 0)
  right_max = Array.new(height.length, 0)
  
  left_max[0] = height[0]
  (1...height.length).each { |i| left_max[i] = [left_max[i-1], height[i]].max }
  
  right_max[-1] = height[-1]
  (height.length - 2).downto(0) { |i| right_max[i] = [right_max[i+1], height[i]].max }
  
  water = 0
  height.each_with_index do |h, i|
    water += [left_max[i], right_max[i]].min - h
  end
  
  water
end

puts trap([0,1,0,2,1,0,1,3,2,1,2,1])
puts trap([4,2,0,3,2,5])
