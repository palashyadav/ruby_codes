# Rotate Array (Ruby): Rotate array to the right by k steps (in-place)
def rotate(nums, k)
  k %= nums.length
  nums.reverse!
  nums[0, k] = nums[0, k].reverse
  nums[k, nums.length - k] = nums[k, nums.length - k].reverse
  nums
end

puts rotate([1,2,3,4,5,6,7], 3).inspect
