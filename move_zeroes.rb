# Move Zeroes: Move all zeroes to end while maintaining order

def move_zeroes(nums)
  last_non_zero = 0
  (0...nums.length).each do |i|
    if nums[i] != 0
      nums[last_non_zero], nums[i] = nums[i], nums[last_non_zero] if last_non_zero != i
      last_non_zero += 1
    end
  end
  nums
end

p move_zeroes([0,1,0,3,12])
p move_zeroes([0,0,1])
p move_zeroes([1,0,1])
