# Wiggle Subsequence: Find longest subsequence where differences alternate signs
def wiggle_max_length(nums)
  return nums.size if nums.size <= 2
  up = 1
  down = 1
  (1...nums.size).each do |i|
    if nums[i] > nums[i - 1]
      up = [up, down + 1].max
    elsif nums[i] < nums[i - 1]
      down = [down, up + 1].max
    end
  end
  [up, down].max
end

puts wiggle_max_length([1,7,4,9,2,5])
puts wiggle_max_length([1,17,5,10,13,15,10,5,16,8])
puts wiggle_max_length([1,2,3,4,5,6,7,8,9])
