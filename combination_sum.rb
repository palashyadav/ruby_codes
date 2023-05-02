# Combination Sum: Find all combinations that sum to target

def combination_sum(candidates, target)
  result = []
  
  def backtrack(candidates, target, start, current, result)
    if target == 0
      result << current.dup
      return
    end
    
    if target < 0
      return
    end
    
    (start...candidates.length).each do |i|
      current << candidates[i]
      backtrack(candidates, target - candidates[i], i, current, result)
      current.pop
    end
  end
  
  backtrack(candidates, target, 0, [], result)
  result
end

p combination_sum([2, 3, 6, 7], 7)
p combination_sum([2, 3, 5], 8)
p combination_sum([2], 1)
