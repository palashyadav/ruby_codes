# Sliding Window Maximum: Return max in each window of size k
def max_sliding_window(nums, k)
  return [] if nums.empty?
  result = []
  deque = []
  (0...nums.size).each do |i|
    deque.shift if !deque.empty? && deque[0] < i - k + 1
    while !deque.empty? && nums[deque[-1]] <= nums[i]
      deque.pop
    end
    deque.push(i)
    result.push(nums[deque[0]]) if i >= k - 1
  end
  result
end

puts max_sliding_window([1,3,-1,-3,5,3,6,7], 3).inspect
puts max_sliding_window([1], 1).inspect
