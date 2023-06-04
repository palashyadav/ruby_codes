# Search in Rotated Sorted Array: Find index of target in rotated sorted array, or -1 if not found
def search(nums, target)
  left, right = 0, nums.size - 1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      return mid
    end
    if nums[left] <= nums[mid]
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    else
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end
  -1
end

puts search([4,5,6,7,0,1,2], 0)
puts search([4,5,6,7,0,1,2], 3)
puts search([1], 0)
