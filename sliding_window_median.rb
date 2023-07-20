# Sliding Window Median: Find median in sliding window of array
def median_sliding_window(nums, k)
  return [] if k > nums.size
  result = []
  window = []
  (0...nums.size).each do |i|
    window << nums[i]
    window.delete(nums[i - k]) if i >= k
    if window.size == k
      sorted = window.sort
      if k % 2 == 1
        result << sorted[k / 2].to_f
      else
        result << (sorted[k / 2 - 1] + sorted[k / 2]) / 2.0
      end
    end
  end
  result
end

puts median_sliding_window([1,3,-1,-3,5,3,6,7], 3).inspect
