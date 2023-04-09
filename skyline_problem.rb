# Skyline Problem: Merge building heights to form skyline

def get_skyline(buildings)
  events = []
  buildings.each do |left, right, height|
    events << [left, 0, height]
    events << [right, 1, height]
  end
  
  events.sort! { |a, b| a[0] == b[0] ? b[1] - a[1] : a[0] - b[0] }
  
  result = []
  heights = { 0 => 1 }
  
  events.each do |x, type, h|
    if type == 0
      heights[h] = (heights[h] || 0) + 1
    else
      heights[h] -= 1
      heights.delete(h) if heights[h] == 0
    end
    
    max_height = heights.keys.max
    
    if result.empty? || result[-1][1] != max_height
      result << [x, max_height]
    end
  end
  
  result
end

buildings = [[2,9,10],[3,7,15],[5,12,12],[15,20,10],[19,24,8]]
p get_skyline(buildings)
