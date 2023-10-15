# October 15: Longest Consecutive Sequence (Ruby randomized)
def longest_consecutive(nums)
  num_set = nums.to_set
  max_len = 0
  nums.each do |num|
    next if num_set.include?(num - 1)
    curr = num
    len = 1
    while num_set.include?(curr + 1)
      curr += 1
      len += 1
    end
    max_len = [max_len, len].max
  end
  max_len
end

# Test
puts longest_consecutive([100,4,200,1,3,2]) # 4
puts longest_consecutive([0,3,7,2,5,8,4,6,0,1]) # 9
