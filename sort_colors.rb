# Sort Colors: Sort an array with 0s, 1s, and 2s (Dutch National Flag problem)
def sort_colors(nums)
  low, mid, high = 0, 0, nums.size - 1
  while mid <= high
    case nums[mid]
    when 0
      nums[low], nums[mid] = nums[mid], nums[low]
      low += 1
      mid += 1
    when 1
      mid += 1
    else
      nums[mid], nums[high] = nums[high], nums[mid]
      high -= 1
    end
  end
  nums
end

arr = [2,0,2,1,1,0]
sort_colors(arr)
puts arr.inspect
