# October 6: Combination Sum (Ruby randomized)
def combination_sum(candidates, target)
  res = []
  dfs = lambda do |remain, combo, start|
    if remain == 0
      res << combo.dup
      return
    end
    (start...candidates.size).each do |i|
      next if candidates[i] > remain
      combo << candidates[i]
      dfs.call(remain - candidates[i], combo, i)
      combo.pop
    end
  end
  dfs.call(target, [], 0)
  res
end

# Test
puts combination_sum([2,3,6,7], 7).inspect # [[2,2,3],[7]]
puts combination_sum([2,3,5], 8).inspect # [[2,2,2,2],[2,3,3],[3,5]]
