# Jump Game II: Find minimum number of jumps to reach last index
def jump(nums)
  jumps = 0
  current_max = 0
  next_max = 0
  (0...nums.size - 1).each do |i|
    next_max = [next_max, i + nums[i]].max
    if i == current_max
      jumps += 1
      current_max = next_max
    end
  end
  jumps
end

puts jump([2,3,1,1,4])
puts jump([2,3,0,1,4])
puts jump([1])
