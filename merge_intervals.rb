def merge_intervals(intervals)
  return [] if intervals.empty?
  
  sorted = intervals.sort_by(&:first)
  result = [sorted[0]]
  
  sorted[1..-1].each do |interval|
    if interval[0] <= result[-1][1]
      result[-1][1] = [result[-1][1], interval[1]].max
    else
      result << interval
    end
  end
  
  result
end

puts merge_intervals([[1,3],[2,6],[8,10],[15,18]]).inspect
puts merge_intervals([[1,4],[4,5]]).inspect
