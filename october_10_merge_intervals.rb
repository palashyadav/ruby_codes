# October 10: Merge Intervals (Ruby randomized)
def merge(intervals)
  intervals.sort_by!(&:first)
  merged = []
  intervals.each do |interval|
    if merged.empty? || merged[-1][1] < interval[0]
      merged << interval
    else
      merged[-1][1] = [merged[-1][1], interval[1]].max
    end
  end
  merged
end

# Test
puts merge([[1,3],[2,6],[8,10],[15,18]]).inspect # [[1,6],[8,10],[15,18]]
puts merge([[1,4],[4,5]]).inspect # [[1,5]]
