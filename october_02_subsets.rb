# October 2: Subsets (Ruby randomized)
def subsets(nums)
  res = [[]]
  nums.each do |num|
    res += res.map { |subset| subset + [num] }
  end
  res
end

# Test
puts subsets([1,2,3]).inspect # [[], [1], [2], [1,2], [3], [1,3], [2,3], [1,2,3]]
