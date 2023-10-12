# October 12: Insert Interval (Ruby randomized)
def insert(intervals, new_interval)
  res = []
  i = 0
  while i < intervals.size && intervals[i][1] < new_interval[0]
    res << intervals[i]
    i += 1
  end
  while i < intervals.size && intervals[i][0] <= new_interval[1]
    new_interval[0] = [new_interval[0], intervals[i][0]].min
    new_interval[1] = [new_interval[1], intervals[i][1]].max
    i += 1
  end
  res << new_interval
  while i < intervals.size
    res << intervals[i]
    i += 1
  end
  res
end

# Test
puts insert([[1,3],[6,9]], [2,5]).inspect # [[1,5],[6,9]]
puts insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]).inspect # [[1,2],[3,10],[12,16]]
