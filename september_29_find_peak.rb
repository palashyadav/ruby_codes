# September 29: Find Peak Element (Ruby randomized)
def find_peak_element(nums)
  left, right = 0, nums.length - 1
  while left < right
    mid = (left + right) / 2
    if nums[mid] > nums[mid + 1]
      right = mid
    else
      left = mid + 1
    end
  end
  left
end

# Test
puts find_peak_element([1,2,3,1]) # 2
puts find_peak_element([1,2,1,3,5,6,4]) # 5 or 1
