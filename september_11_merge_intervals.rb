# Merge Intervals: Merge overlapping intervals

def merge(intervals)
  return [] if intervals.empty?
  intervals.sort_by! { |a| a[0] }
  res = [intervals[0]]
  (1...intervals.size).each do |i|
    if intervals[i][0] <= res[-1][1]
      res[-1][1] = [res[-1][1], intervals[i][1]].max
    else
      res << intervals[i]
    end
  end
  res
end

puts merge([[1,3],[2,6],[8,10],[15,18]]).inspect
puts merge([[1,4],[4,5]]).inspect
