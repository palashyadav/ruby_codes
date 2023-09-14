# Subarray Sum Equals K: Count subarrays summing to k using hashmap

def subarray_sum(nums, k)
  count = 0
  sum = 0
  map = Hash.new(0)
  map[0] = 1
  nums.each do |num|
    sum += num
    count += map[sum - k]
    map[sum] += 1
  end
  count
end

puts subarray_sum([1,1,1], 2)
puts subarray_sum([1,2,3], 3)
