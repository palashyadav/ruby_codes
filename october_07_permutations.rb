# October 7: Permutations (Ruby randomized)
def permute(nums)
  res = []
  backtrack = lambda do |path, used|
    if path.size == nums.size
      res << path.dup
      return
    end
    nums.each_with_index do |num, i|
      next if used[i]
      used[i] = true
      path << num
      backtrack.call(path, used)
      path.pop
      used[i] = false
    end
  end
  backtrack.call([], Array.new(nums.size, false))
  res
end

# Test
puts permute([1,2,3]).inspect # [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
