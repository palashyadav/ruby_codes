# Top K Frequent Elements: Return k most frequent elements

def top_k_frequent(nums, k)
  freq = Hash.new(0)
  nums.each { |n| freq[n] += 1 }
  freq.sort_by { |_, v| -v }.first(k).map(&:first)
end

puts top_k_frequent([1,1,1,2,2,3], 2).inspect
puts top_k_frequent([1], 1).inspect
