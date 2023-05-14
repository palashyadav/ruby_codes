# Search Insert Position: Find index to insert target in sorted array

def search_insert(nums, target)
  left, right = 0, nums.length - 1
  
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  left
end

puts search_insert([1,3,5,6], 5)
puts search_insert([1,3,5,6], 2)
puts search_insert([1,3,5,6], 7)
puts search_insert([1,3,5,6], 0)
