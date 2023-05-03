# Permutations: Generate all permutations of array

def permute(nums)
  result = []
  
  def backtrack(current, remaining, result)
    if remaining.empty?
      result << current.dup
      return
    end
    
    remaining.each_with_index do |num, i|
      current << num
      new_remaining = remaining[0...i] + remaining[i + 1..-1]
      backtrack(current, new_remaining, result)
      current.pop
    end
  end
  
  backtrack([], nums, result)
  result
end

p permute([1, 2, 3])
p permute([0, 1])
p permute([1])
